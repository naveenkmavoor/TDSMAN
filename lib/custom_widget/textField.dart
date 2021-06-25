import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final validator, onSaved;

  const CustomField({
    Key? key,
    required this.validator,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: width,
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
        onSaved: onSaved,
      ),
    );
  }
}
