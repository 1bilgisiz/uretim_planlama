import 'package:flutter/material.dart';
import 'package:uretim_planlama/App/Operation%20Detail/View/Components/OperationDetailArrowButtonWidget.dart';
import 'package:uretim_planlama/App/Operation%20Detail/View/Components/OperationDetailTopWidgets.dart';
import 'package:uretim_planlama/App/Operation%20Detail/View/Components/OperationDetailSliderContentWidget.dart';

class OperationDetailBodyView extends StatefulWidget {
  const OperationDetailBodyView({super.key});

  @override
  State<OperationDetailBodyView> createState() =>
      _OperationDetailBodyViewState();
}

class _OperationDetailBodyViewState extends State<OperationDetailBodyView> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      fit: StackFit.loose,
      children: [
        Positioned.fill(child: OperationDetailSliderContentWidget()),
        Positioned(bottom: 0, child: OperationDetailArrowButtonWidget()),
        Positioned(
          right: 16,
          bottom: 16,
          left: 16,
          child: OperationDetailTopWidgets(),
        ),
      ],
    );
  }
}
