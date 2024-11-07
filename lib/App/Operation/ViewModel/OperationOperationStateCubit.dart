import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uretim_planlama/Model/Operations/OperationStates.dart';

class OperationOperationStateCubit extends Cubit<OperationStates> {
  OperationOperationStateCubit() : super(OperationStates.all);

  void updateState(OperationStates state) => emit(state);
}
