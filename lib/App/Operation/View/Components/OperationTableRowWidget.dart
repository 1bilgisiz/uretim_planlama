import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uretim_planlama/Model/Operations/Operation.dart';
import 'package:uretim_planlama/Model/Operations/OperationStates.dart';

class OperationTableRowWidget extends StatelessWidget {
  final Operation operation;
  const OperationTableRowWidget({super.key, required this.operation});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 0),
      child: Row(
        children: [
          _buildTitleSubtitleCell(operation.opNo, operation.workOrderNo),
          _buildTitleSubtitleCell(
              operation.operationTitle, operation.workCenter),
          _buildTitleSubtitleCell(operation.partName,
              DateFormat("dd.MM.yyyy HH:mm").format(operation.deliveryDate)),
          _buildDataCell(operation.totalAmount.toString()),
          _buildDataCell(operation.availableAmount.toString()),
          _buildDataCell(operation.scrapAmount.toString()),
          _buildDataCell(operation.state.toStringState()),
        ],
      ),
    );
  }

  Widget _buildTitleSubtitleCell(String title, String subtitle) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 14,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDataCell(String data) {
    return Expanded(
      child: Text(
        data,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 16,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
