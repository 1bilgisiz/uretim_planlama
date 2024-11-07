import 'package:flutter/material.dart';
import 'package:uretim_planlama/App/Operation%20Detail/View/Components/OperationDetailBodyView.dart';

class OperationDetailView extends StatelessWidget {
  const OperationDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          return;
        }
      },
      child: const Scaffold(
        body: OperationDetailBodyView(),
      ),
    );
  }
}
