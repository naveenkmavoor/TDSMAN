import 'package:flutter/material.dart';
import 'package:tdsman_windows_app/custom_widget/topBar.dart';
import 'package:tdsman_windows_app/screens/addEmployee.dart';
import 'package:tdsman_windows_app/screens/home_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

List _screens = [
  HomeScreen(),
  AddEmployee(),
];

class _BaseScreenState extends State<BaseScreen> {
  int i = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[200],
          title: TopBar(),
        ),
      ),
      body: Container(
        child: _screens[i],
      ),
    );
  }
}
