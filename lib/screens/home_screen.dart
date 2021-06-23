import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tdsman_windows_app/custom_widget/formattedText.dart';
import 'package:tdsman_windows_app/custom_widget/side_menu_button.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  late String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _sideMenu(),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header,
              _displayInfo(),
            ],
          ),
        ),
      ],
    );
  }

  final Widget _header = Stack(
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
            padding: const EdgeInsets.fromLTRB(40, 30, 40, 10),
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
          FormattedText(header: 'Name', value: 'HUKAMI CHAND'),
          FormattedText(header: 'Serial No', value: 'A7VC7LRH'),
          FormattedText(header: 'Financial year', value: '2005-06 TO 2020-21'),
          FormattedText(header: 'Version date', value: '29 APRIL 2021'),
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
