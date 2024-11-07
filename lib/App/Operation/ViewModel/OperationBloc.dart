import 'package:bloc/bloc.dart';
import 'package:uretim_planlama/App/Operation/ViewModel/OperationOperationStateCubit.dart';
import 'package:uretim_planlama/App/Operation/ViewModel/OperationEvent.dart';
import 'package:uretim_planlama/App/Operation/ViewModel/OperationState.dart';
import 'package:uretim_planlama/Data/Server/Operation/OperationAPIs.dart';
import 'package:uretim_planlama/Model/Operations/Operation.dart';
import 'package:uretim_planlama/Model/Operations/OperationStates.dart';

class OperationBloc extends Bloc<OperationEvent, OperationState> {
  final OperationOperationStateCubit operationBlocCubit;
  List<Operation> _operations = [];

  OperationBloc(this.operationBlocCubit) : super(OperationInitialState()) {
    on<OperationInitialEvent>((event, emit) => emit(OperationInitialState()));

    on<OperationFetchOperationEvent>(
      (event, emit) {
        emit(OperationLoading());
        operationBlocCubit.updateState(event.state);
        _operations = OperationAPIs.operations;
        emit(OperationResult(_operations));
      },
    );

    on<OperationFilterOperationEvent>((event, emit) {
      emit(OperationLoading());
      List<Operation> filterOperation = [];
      operationBlocCubit.updateState(event.state);
      if (event.state == OperationStates.all) {
        filterOperation = _operations;
      }

      if (event.state != OperationStates.all) {
        filterOperation =
            _operations.where((e) => e.state == event.state).toList();
      }

      emit(OperationResult(filterOperation));
    });
  }

  int getOperationCountOfStates(OperationStates state) =>
      _operations.where((e) => e.state == state).toList().length;
}
