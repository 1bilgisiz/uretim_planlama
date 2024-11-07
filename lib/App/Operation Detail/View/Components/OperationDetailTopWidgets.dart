import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uretim_planlama/App/Operation%20Detail/ViewModel/SliderAutoPlayCubit.dart';
import 'package:uretim_planlama/Utils/build_contexts.dart';

class OperationDetailTopWidgets extends StatelessWidget {
  const OperationDetailTopWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final sliderAutoPlayCubit = BlocProvider.of<SliderAutoPlayCubit>(context);
    return SizedBox(
      width: context.width(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 40,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          const Spacer(),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () {
                sliderAutoPlayCubit.updateState(!sliderAutoPlayCubit.state);
              },
              icon: Icon(
                !context.watch<SliderAutoPlayCubit>().state
                    ? Icons.lock
                    : Icons.lock_open,
                size: 40,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
