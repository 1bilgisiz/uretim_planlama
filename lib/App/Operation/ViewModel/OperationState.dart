import 'package:uretim_planlama/Model/Operations/Operation.dart';

abstract class OperationState {}

class OperationInitialState extends OperationState {}

class OperationLoading extends OperationState {}

class OperationError extends OperationState {
  late String message;
  OperationError(this.message);
}

class OperationResult extends OperationState {
  late List<Operation> operations;
  OperationResult(this.operations);
}
