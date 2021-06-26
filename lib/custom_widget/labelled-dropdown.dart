import 'package:flutter/material.dart';

class LabelledDropDown extends StatefulWidget {
  final List<String> list;
  final String label;
  const LabelledDropDown({Key? key, required this.list, required this.label})
      : super(key: key);

  @override
  _LabelledDropDownState createState() => _LabelledDropDownState();
}

class _LabelledDropDownState extends State<LabelledDropDown> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.label,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.aspectRatio * 10),
        ),
        SizedBox(width: 10),
        DropdownButton<dynamic>(
            isExpanded: false,
            value: selectedValue,
            onChanged: (v) {
              setState(() {
                selectedValue = v;
              });
            },
            items: widget.list
                .map((e) => DropdownMenuItem(child: Text(e), value: e))
                .toList()),
      ],
    );
  }
}
