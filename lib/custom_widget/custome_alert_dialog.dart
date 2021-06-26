import 'package:flutter/material.dart';
import 'package:tdsman_windows_app/custom_widget/customText.dart';

class CustomeAlertDialog extends StatefulWidget {
  const CustomeAlertDialog({Key? key}) : super(key: key);

  @override
  _CustomeAlertDialogState createState() => _CustomeAlertDialogState();
}

class _CustomeAlertDialogState extends State<CustomeAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.grey[50],
      child: Container(
        height: 650,
        width: 1000,
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Employee Details',
                      color: Colors.black,
                      bold: true,
                    ),
                    Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black26, width: 0.5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: [
                                  SizedBox(width: 20),
                                  CustomText(
                                    text: 'Employee Name',
                                    color: Colors.black,
                                    bold: true,
                                  ),
                                  SizedBox(width: 20),
                                  CustomText(
                                      text: 'BHUGANA RAM',
                                      color: Colors.blue,
                                      bold: true),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  rowText('PAN', 'ADPO1233', Colors.black,
                                      Colors.blue),
                                  rowText('Category', 'G-General', Colors.black,
                                      Colors.blue),
                                  rowText('Financial Year', '2020-21',
                                      Colors.black, Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 400, left: 20, right: 20),
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 35,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black26)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    rowText('No. of Records', '11', Colors.black, Colors.blue),
                    rowText('Total Taxable Amount', '90500.00', Colors.black,
                        Colors.blue),
                    rowText('Total Tax Deposit', '69000.0', Colors.black,
                        Colors.blue),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Closed'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget rowText(
    String fText,
    String sText,
    Color fColor,
    Color sColor,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomText(
          text: fText,
          color: fColor,
          bold: true,
        ),
        SizedBox(width: 20),
        CustomText(
          text: sText,
          color: sColor,
          bold: true,
        ),
      ],
    );
  }
}
