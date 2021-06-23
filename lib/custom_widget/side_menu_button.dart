import 'package:flutter/material.dart';

class SideMenuButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  SideMenuButton({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 5.0,
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
