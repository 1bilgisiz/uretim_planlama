import 'package:flutter/material.dart';
import 'package:uretim_planlama/App/Operation/View/Components/OperationButtonWidget.dart';
import 'package:uretim_planlama/Model/Operations/OperationStates.dart';

class OperationTopButtonsSection extends StatelessWidget {
  const OperationTopButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<OperationButtonOption> buttons = [
      OperationButtonOption(
        icon: Icons.hourglass_bottom_outlined,
        backgroundColor: const Color.fromARGB(255, 212, 196, 72),
        status: OperationStates.waiting,
      ),
      OperationButtonOption(
        icon: Icons.build,
        backgroundColor: Colors.blue,
        status: OperationStates.prepare,
      ),
      OperationButtonOption(
        icon: Icons.precision_manufacturing,
        backgroundColor: Colors.purple.shade500,
        status: OperationStates.production,
      ),
      OperationButtonOption(
        icon: Icons.pause_circle,
        backgroundColor: Colors.red,
        status: OperationStates.stoped,
      ),
      OperationButtonOption(
        icon: Icons.check_circle,
        backgroundColor: Colors.green,
        status: OperationStates.completed,
      ),
    ];

    return GridView.count(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 5,
      crossAxisSpacing: 5,
      children: buttons
          .map((option) => OperationButtonWidget(option: option))
          .toList(),
    );
  }
}
