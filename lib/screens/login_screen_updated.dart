import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tdsman_windows_app/custom_widget/textField.dart';
import 'package:hb_check_code/hb_check_code.dart';

class LoginScreenUpdated extends StatefulWidget {
  const LoginScreenUpdated({Key? key}) : super(key: key);

  @override
  _LoginScreenUpdatedState createState() => _LoginScreenUpdatedState();
}

class _LoginScreenUpdatedState extends State<LoginScreenUpdated> {
  @override
  Widget build(BuildContext context) {
    String code = "";
    for (var i = 0; i < 6; i++) {
      code = code + Random().nextInt(9).toString();
    }
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 100, top: 100, right: 400),
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.black54,
                    width: 0.7,
                  )),
              child: Container(
                margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter Login Details',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.black54,
                            width: 0.5,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomField(
                              validator: null, width: 150, label: 'TAN'),
                          CustomField(
                              validator: null, width: 150, label: 'User ID'),
                          CustomField(
                              validator: null, width: 150, label: 'Password'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => setState(() {}),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.black54,
                                    )),
                                child: HBCheckCode(
                                  dotCount: 20,
                                  code: code,
                                  backgroundColor: Colors.grey[50],
                                ),
                              ),
                              SizedBox(width: 20.0),
                              Icon(
                                Icons.refresh_rounded,
                                size: 30,
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomField(
                          validator: null,
                          width: 200,
                          label: 'Enter text as in above image',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Progress',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black54,
                          width: 0.5,
                        )),
                    child: Container(
                      height: 10,
                      margin: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
