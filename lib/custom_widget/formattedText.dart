import 'package:flutter/material.dart';

class FormattedText extends StatelessWidget {
  final String header, value;
  const FormattedText({Key? key, required this.header, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Container(
            width: 120,
            child: Row(
              children: [
                _styledText(header),
                Spacer(),
                _styledText(':'),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          _styledText(value),
        ],
      ),
    );
  }

  Widget _styledText(String text) => Text(
        text,
        style: TextStyle(
          color: Colors.black.withOpacity(.8),
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      );
}
