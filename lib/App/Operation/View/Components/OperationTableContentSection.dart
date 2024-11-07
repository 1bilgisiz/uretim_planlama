import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uretim_planlama/App/Operation%20Detail/View/OperationDetailView.dart';
import 'package:uretim_planlama/App/Operation/View/Components/OperationTableHeaderWidget.dart';
import 'package:uretim_planlama/App/Operation/View/Components/OperationTableRowWidget.dart';
import 'package:uretim_planlama/App/Operation/ViewModel/OperationBloc.dart';
import 'package:uretim_planlama/App/Operation/ViewModel/OperationState.dart';
import 'package:uretim_planlama/Model/Operations/Operation.dart';

class OperationTableContentSection extends StatelessWidget {
  const OperationTableContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const OperationTableHeaderWidget(),
        BlocBuilder<OperationBloc, OperationState>(
          builder: (context, state) {
            if (state is OperationResult) {
              List<Operation> operations = state.operations;
              return Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: operations.length,
                  itemBuilder: (context, index) {
                    final operation = operations[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OperationDetailView(),
                            ));
                      },
                      child: OperationTableRowWidget(operation: operation),
                    );
                  },
                ),
              );
            }

            if (state is OperationLoading) {
              return const CircularProgressIndicator();
            }

            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
