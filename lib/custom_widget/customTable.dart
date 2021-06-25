import 'package:flutter/material.dart';

import 'customText.dart';
class CustomTable extends StatelessWidget {
  final List<String> columns;
  final List<List<String>> rows;

  CustomTable({
    Key? key,
    required this.columns,
    required this.rows,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        for (var i = 0; i < columns.length; i++)
          DataColumn(
            label: CustomText(
              text: columns[i],
              color: Colors.black,
              bold: true,
            ),
          ),
      ],
      rows: [],
    );
  }
}
