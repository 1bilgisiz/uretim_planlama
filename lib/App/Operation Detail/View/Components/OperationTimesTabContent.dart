import 'package:flutter/material.dart';
import 'package:uretim_planlama/Utils/build_contexts.dart';

class OperationTimesTabContent extends StatelessWidget {
  const OperationTimesTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width(),
      height: context.height() * 0.65 - 60,
      child: SingleChildScrollView(
        child: DataTable(
          columns: const [
            DataColumn(label: Text("Kaynak", style: TextStyle(fontSize: 20))),
            DataColumn(
                label: Text("Kayıt Türü", style: TextStyle(fontSize: 20))),
            DataColumn(
                label: Text("Zaman Türü", style: TextStyle(fontSize: 20))),
            DataColumn(
                label: Text("Başlangıç", style: TextStyle(fontSize: 20))),
            DataColumn(label: Text("Bitiş", style: TextStyle(fontSize: 20))),
            DataColumn(
                label: Text("Durma Sebebi", style: TextStyle(fontSize: 20))),
            DataColumn(label: Text("Not", style: TextStyle(fontSize: 20))),
          ],
          rows: List.generate(
            20,
            (index) => DataRow(
              color: WidgetStateProperty.all(index % 2 == 0
                  ? const Color(0xFFf2f2f2)
                  : const Color(0xFFFFFFFF)),
              cells: [
                DataCell(_buildText('08:00')),
                DataCell(_buildText('İşçilik')),
                DataCell(_buildText('Çalışma Süresi')),
                DataCell(_buildText('08:00')),
                DataCell(_buildText('18:00')),
                DataCell(_buildText('iş bitimi')),
                DataCell(_buildText('Notlarrr')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildText(String data, {double fontSize = 18, int maxLines = 1}) {
    return Text(
      data,
      style: TextStyle(fontSize: fontSize),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
