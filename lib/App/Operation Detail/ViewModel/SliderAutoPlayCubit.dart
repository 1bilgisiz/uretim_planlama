import 'package:flutter_bloc/flutter_bloc.dart';

class SliderAutoPlayCubit extends Cubit<bool> {
  SliderAutoPlayCubit() : super(false);

  void updateState(bool state) => emit(state);
}
