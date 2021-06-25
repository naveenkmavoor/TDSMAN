import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String buttonName;
  final double verticalPad, horizontalPad;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.buttonName,
    required this.verticalPad,
    required this.horizontalPad,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.symmetric(
          vertical: verticalPad,
          horizontal: horizontalPad,
        ),
        primary: Colors.grey[350],
        side: BorderSide(
          color: Colors.black26,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonName,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
