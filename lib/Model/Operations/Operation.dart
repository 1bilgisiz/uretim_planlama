import 'package:uretim_planlama/Model/Operations/OperationStates.dart';

class Operation {
  final String opNo;
  final String workOrderNo;
  final String operationTitle;
  final String workCenter;
  final String partName;
  final DateTime deliveryDate;
  final int totalAmount;
  final int availableAmount;
  final int scrapAmount;
  final OperationStates state;

  Operation({
    required this.opNo,
    required this.workOrderNo,
    required this.operationTitle,
    required this.workCenter,
    required this.partName,
    required this.deliveryDate,
    required this.totalAmount,
    required this.availableAmount,
    required this.scrapAmount,
    required this.state,
  });
}
