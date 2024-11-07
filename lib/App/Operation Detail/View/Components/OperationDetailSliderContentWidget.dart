import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uretim_planlama/App/Operation%20Detail/View/Components/OperationDetailJobDetailSlider.dart';
import 'package:uretim_planlama/App/Operation%20Detail/View/Components/OperationDetailSliderButtonSlider.dart';
import 'package:uretim_planlama/App/Operation%20Detail/ViewModel/SliderAutoPlayCubit.dart';
import 'package:uretim_planlama/Utils/build_contexts.dart';

class OperationDetailSliderContentWidget extends StatefulWidget {
  const OperationDetailSliderContentWidget({super.key});

  @override
  State<OperationDetailSliderContentWidget> createState() =>
      _OperationDetailSliderContentWidgetState();
}

class _OperationDetailSliderContentWidgetState
    extends State<OperationDetailSliderContentWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: context.height(),
        autoPlay: context.watch<SliderAutoPlayCubit>().state,
        viewportFraction: 1.0,
      ),
      items: const [
        OperationDetailSliderButtonSlider(),
        OperationDetailJobDetailSlider()
      ],
    );
  }
}
