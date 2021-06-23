import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tdsman_windows_app/custom_widget/side_menu_button.dart';
import 'package:tdsman_windows_app/custom_widget/topBar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String name;

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
      body: Row(
        children: [
          _sideMenu(),
          Expanded(
            child: _centerStack(context),
          ),
        ],
      ),
    );
  }

  Widget _centerStack(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _stack1,
          _stack2,
        ],
      );

  Widget _stack1 = Stack(
    alignment: Alignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 70,
        ),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(50, 40, 50, 10),
            child: Text(
              'TDS Returns Made Easy',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),
          ),
          
        ),
      ),
      Card(
        color: Colors.blue[700],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 15,
          ),
          child: Text(
            'TDSMANTRA',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ],
  );

  Widget _stack2 = Stack(
    children: [
      Center(
        child: Image.asset(
          'assets/bg.png',
          width: 700,
        ),
      ),
    ],
  );

  Widget _sideMenu() => Container(
        color: Colors.blue[700],
        height: double.infinity,
        width: 260,
        child: Container(
          margin: EdgeInsets.only(top: 60.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      width: 200,
                      height: 20.0,
                      color: Colors.blue[900],
                    ),
                  ),
                  Center(
                    child: Text(
                      'SHORTCUTS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              SideMenuButton(
                onPressed: () {},
                title: 'Add Company',
              ),
              SideMenuButton(
                onPressed: () {},
                title: 'Form 24Q',
              ),
              SideMenuButton(
                onPressed: () {},
                title: 'Make Correction',
              ),
              SideMenuButton(
                onPressed: () {},
                title: 'Add Employee',
              ),
            ],
          ),
        ),
      );
}
