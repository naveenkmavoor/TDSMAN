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
          _header,
          _displayInfo(),
        ],
      );

  Widget _header = Stack(
    alignment: Alignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 90,
        ),
        child: Card(
          shadowColor: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 40, 40, 10),
            child: Text(
              'TDS Returns Made Easy',
              style: TextStyle(
                fontSize: 17,
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

  Widget _displayInfo() => Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Image.asset(
              'assets/bg.png',
              width: 550,
            ),
          ),
          Column(
            children: [
              Container(
                width: 350,
                height: 140,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.withOpacity(.5),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: _userInfo(),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'helpline : +91-33-22875500, 9836490007',
                style: TextStyle(
                  color: Colors.black.withOpacity(.75),
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'email : info@tdsman.com',
                style: TextStyle(
                  color: Colors.black.withOpacity(.75),
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      );

  Widget _userInfo() => Column(
        children: [
          _formatText('Name', 'HUKAMI CHAND'),
          _formatText('Serial No', 'A7VC7LRH'),
          _formatText('Financial year', '2005-06 TO 2020-21'),
          _formatText('Version date', '29 APRIL 2021'),
        ],
      );

  Widget _formatText(String header, String value) => Padding(
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

  Widget _styledText(String text) => Text(
        text,
        style: TextStyle(
          color: Colors.black.withOpacity(.8),
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
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
