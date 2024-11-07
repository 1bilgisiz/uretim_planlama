import 'package:flutter/material.dart';
import 'package:uretim_planlama/Utils/build_contexts.dart';

class OperationMaterialListTabContent extends StatelessWidget {
  const OperationMaterialListTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width(),
      height: context.height() * 0.65 - 60,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const [
            DataColumn(label: Text("#", style: TextStyle(fontSize: 20))),
            DataColumn(label: Text("Malzeme", style: TextStyle(fontSize: 20))),
            DataColumn(
                label: Text("Montaj Mik.", style: TextStyle(fontSize: 20))),
            DataColumn(
                label: Text("Gereken Mik.", style: TextStyle(fontSize: 20))),
            DataColumn(
                label:
                    Text("Dahili Lok. Mik.", style: TextStyle(fontSize: 20))),
            DataColumn(
                label: Text("Kullanılabilir Mik.",
                    style: TextStyle(fontSize: 20))),
            DataColumn(
                label: Text("Ölçü Birimi", style: TextStyle(fontSize: 20))),
          ],
          rows: List.generate(
            20,
            (index) => DataRow(
              color: WidgetStateProperty.all(index % 2 == 0
                  ? const Color(0xFFf2f2f2)
                  : const Color(0xFFFFFFFF)),
              cells: [
                DataCell(_buildText('1')),
                DataCell(_buildText('50000412-Civata M6*20 Ab Din912')),
                DataCell(_buildText('2')),
                DataCell(_buildText('2')),
                DataCell(_buildText('-189')),
                DataCell(_buildText('3562')),
                DataCell(_buildText('Adet')),
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
