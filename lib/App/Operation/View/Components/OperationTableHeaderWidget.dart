import 'package:flutter/material.dart';

class OperationTableHeaderWidget extends StatefulWidget {
  const OperationTableHeaderWidget({super.key});

  @override
  State<OperationTableHeaderWidget> createState() => _OperationTableHeaderWidgetState();
}

class _OperationTableHeaderWidgetState extends State<OperationTableHeaderWidget> {
  List<String> headerTitle = [
    'OP/İE No',
    'Operasyon/İş Merkezi',
    'Üretilecek Malzeme/Tahmini Teslim',
    'Total Mik.',
    'Uygun Mik.',
    'Hurda Mik.',
    'Durum'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey,
      ),
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: headerTitle
            .map(
              (e) => Expanded(
                child: Text(
                  e,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
