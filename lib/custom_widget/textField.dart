import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final validator;
  final double width;
  final String label;

  const CustomField(
      {Key? key,
      required this.validator,
      required this.width,
      required this.label})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: width,
          height: 27,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(3),
          ),
          child: TextFormField(
            style: TextStyle(
              fontSize: 13,
            ),
            decoration: InputDecoration(
              isDense: true,
              border: InputBorder.none,
            ),
            validator: validator,
          ),
        ),
      ],
    );
  }
}
