import 'package:flutter/material.dart';

class SpecialButton extends StatefulWidget {
  final onclick;
  final text;
  const SpecialButton({Key? key, required this.onclick, required this.text})
      : super(key: key);

  @override
  _SpecialButtonState createState() => _SpecialButtonState();
}

class _SpecialButtonState extends State<SpecialButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: widget.onclick,
        child: Text(widget.text),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber[100]),
            foregroundColor: MaterialStateProperty.all(Colors.black)));
  }
}
