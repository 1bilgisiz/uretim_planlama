import 'package:uretim_planlama/Model/Operations/OperationStates.dart';

abstract class OperationEvent {}

class OperationInitialEvent extends OperationEvent {}

class OperationFetchOperationEvent extends OperationEvent {
  final OperationStates state;
  OperationFetchOperationEvent(this.state);
}

class OperationFilterOperationEvent extends OperationEvent {
  final OperationStates state;
  OperationFilterOperationEvent(this.state);
}
