import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uretim_planlama/App/Operation%20Detail/ViewModel/SliderAutoPlayCubit.dart';
import 'package:uretim_planlama/App/Operation/ViewModel/OperationBloc.dart';
import 'package:uretim_planlama/App/Operation/ViewModel/OperationOperationStateCubit.dart';

class AppBloc {
  static final operationOperationStateCubit = OperationOperationStateCubit();
  static final operationBloc = OperationBloc(operationOperationStateCubit);
  static final sliderAutoPlayCubit = SliderAutoPlayCubit();
  static final List<BlocProvider> providers = [
    BlocProvider<OperationBloc>(
      create: (context) => operationBloc,
      lazy: true,
    ),
    BlocProvider<OperationOperationStateCubit>(
      create: (context) => operationOperationStateCubit,
      lazy: true,
    ),
    BlocProvider<SliderAutoPlayCubit>(
      create: (context) => sliderAutoPlayCubit,
      lazy: true,
    ),
  ];

  //MARK: SINGLETON PATTERN
  static final AppBloc _instance = AppBloc._init();
  factory AppBloc() {
    return _instance;
  }
  AppBloc._init();

  //MARK: BLOC DISPOSE
  static void dispose() {
    operationBloc.close();
    operationOperationStateCubit.close();
    sliderAutoPlayCubit.close();
  }
}
