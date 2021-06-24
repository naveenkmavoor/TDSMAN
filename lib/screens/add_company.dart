import 'package:flutter/material.dart';
import 'package:tdsman_windows_app/custom_widget/textField.dart';
import 'package:tdsman_windows_app/utilities/constants.dart';

class AddCompany extends StatelessWidget {
  final id = 'AddCompany';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(50.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(5.0),
              decoration: KBorderContainer,
              child: CustomField(
                label: 'Company Name',
                width: 0.0,
                validator: null,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.all(5.0),
                          decoration: KBorderContainer,
                          child: CustomField(
                            label: 'Company Name',
                            width: 0.0,
                            validator: null,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(10.0),
                                        margin: EdgeInsets.all(5.0),
                                        decoration: KBorderContainer,
                                        child: CustomField(
                                          label: 'Company Name',
                                          width: 0.0,
                                          validator: null,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(10.0),
                                        margin: EdgeInsets.all(5.0),
                                        decoration: KBorderContainer,
                                        child: CustomField(
                                          label: 'Company Name',
                                          width: 0.0,
                                          validator: null,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  margin: EdgeInsets.all(5.0),
                                  decoration: KBorderContainer,
                                  child: CustomField(
                                    label: 'Company Name',
                                    width: 0.0,
                                    validator: null,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            padding: EdgeInsets.all(10.0),
                            decoration: KBorderContainer,
                            child: CustomField(
                              label: 'Company Name',
                              width: 0.0,
                              validator: null,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            padding: EdgeInsets.all(10.0),
                            decoration: KBorderContainer,
                            child: CustomField(
                              label: 'Company Name',
                              width: 0.0,
                              validator: null,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
