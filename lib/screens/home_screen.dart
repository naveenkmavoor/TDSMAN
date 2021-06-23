import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tdsman_windows_app/custom_widget/side_menu_button.dart';
import 'package:tdsman_windows_app/custom_widget/textField.dart';
import 'package:tdsman_windows_app/custom_widget/topBar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print('Hello');
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
          Form(
            key: _formKey,
            child: CustomField(
              label: 'Field 1',
              validator: (val) {
                print(val);
              },
              width: 500,
            ),
          ),
          TextButton(
            onPressed: () {
              _formKey.currentState?.validate();
            },
            child: Text('validate'),
          ),
        ],
      ),
    );
  }

  Widget _sideMenu() => Container(
        color: Colors.blue,
        height: double.infinity,
        width: 240,
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
