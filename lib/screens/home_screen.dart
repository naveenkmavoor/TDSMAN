import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tdsman_windows_app/custom_widget/side_menu_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 50.0,
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  color: Colors.blueAccent,
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Container(
                    margin: EdgeInsets.only(top: 60.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(
                                    top: MediaQuery.of(context)
                                            .size
                                            .aspectRatio *
                                        10),
                                width: MediaQuery.of(context).size.width * 0.12,
                                height: 20.0,
                                color: Colors.blue[900],
                              ),
                            ),
                            Center(
                              child: Text(
                                'SHORTCUTS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.aspectRatio *
                                          15,
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
                        SideMenuButton(
                          onPressed: () {},
                          title: 'Add Company',
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Text("data"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
