import 'package:flutter/material.dart';

class SideMenuButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  SideMenuButton({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 10,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shadowColor: Colors.white54,
          padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20,
          ),
        ),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            )
          ],
        ),
      ),
    );
  }
}
