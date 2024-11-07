import 'package:flutter/material.dart';
import 'package:uretim_planlama/App/Operation/View/Components/OperationRightArrowButtonWidget.dart';
import 'package:uretim_planlama/App/Operation/View/Components/OperationTableContentSection.dart';
import 'package:uretim_planlama/App/Operation/View/Components/OperationTopButtonsSection.dart';

class OperationBodyView extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const OperationBodyView({super.key, required this.scaffoldKey});

  @override
  State<OperationBodyView> createState() => _OperationBodyViewState();
}

class _OperationBodyViewState extends State<OperationBodyView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      alignment: Alignment.center,
      children: [
        const Positioned.fill(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              children: [
                Expanded(flex: 2, child: OperationTopButtonsSection()),
                Expanded(flex: 4, child: OperationTableContentSection()),
              ],
            ),
          ),
        ),
        Positioned(
          right: 20,
          child: OperationRightArrowButtonWidget(
            scaffoldKey: widget.scaffoldKey,
          ),
        ),
      ],
    );
  }
}
