enum OperationStates {
  all,
  waiting,
  prepare,
  production,
  stoped,
  completed,
  unknown
}

extension ParseToStringState on OperationStates {
  String toStringState() {
    if (this == OperationStates.all) return 'Tümü';
    if (this == OperationStates.waiting) return 'Bekliyor';
    if (this == OperationStates.prepare) return 'Hazırlık';
    if (this == OperationStates.production) return 'Üretim';
    if (this == OperationStates.stoped) return 'Durdurulan';
    if (this == OperationStates.completed) return 'Tamamlanan';

    return 'Bilinmiyor';
  }
}
