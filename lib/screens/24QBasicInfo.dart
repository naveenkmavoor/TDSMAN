import 'package:flutter/material.dart';
import 'package:tdsman_windows_app/custom_widget/customButton.dart';
import 'package:tdsman_windows_app/custom_widget/customDropDown.dart';
import 'package:tdsman_windows_app/custom_widget/customText.dart';
import 'package:tdsman_windows_app/custom_widget/textField.dart';

class BasicInfo24Q extends StatelessWidget {
  BasicInfo24Q({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          header1(context),
          header2(),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      body1(context),
                      SizedBox(
                        height: 10,
                      ),
                      body2(context),
                      SizedBox(
                        height: 10,
                      ),
                      body3(context),
                      SizedBox(
                        height: 10,
                      ),
                      body4(context),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.black45,
                      ),
                      color: Colors.blue[50],
                    ),
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.width * 0.35,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Some Info Goes here"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          footer(),
        ],
      ),
    );
  }

  Widget header1(BuildContext context) => Row(
        children: [
          Flexible(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black38,
                ),
                color: Colors.grey[200],
              ),
              child: Center(
                child: CustomText(
                  text: "Form 24Q (Salary)",
                  color: Colors.blueAccent,
                  bold: true,
                ),
              ),
            ),
          ),
          Container(
            width: 200,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Center(
              child: CustomText(
                text: "Basic Information",
                color: Colors.white,
                bold: true,
              ),
            ),
          ),
        ],
      );

  Widget header2() => Container(
        margin: EdgeInsets.symmetric(
          vertical: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "Select Financial Year",
                  color: Colors.black,
                  bold: true,
                ),
                SizedBox(
                  width: 20,
                ),
                CDropDown(
                  menuList: [
                    '2015-2016',
                    '2016-2017',
                    '2017-2018',
                  ],
                  widthFactor: 0.15,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "Select Quarter",
                  color: Colors.black,
                  bold: true,
                ),
                SizedBox(
                  width: 20,
                ),
                CDropDown(
                  menuList: [
                    'Q1',
                    'Q2',
                    'Q3',
                    'Q4',
                  ],
                  widthFactor: 0.1,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "Select Company",
                  color: Colors.black,
                  bold: true,
                ),
                SizedBox(
                  width: 20,
                ),
                CDropDown(
                  menuList: [
                    'Sec Govt High School1',
                    'Sec Govt High School2',
                    'Sec Govt High School3',
                  ],
                  widthFactor: 0.3,
                ),
              ],
            ),
          ],
        ),
      );
  Widget body1(BuildContext context) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.black45,
          ),
        ),
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            label("Company Info"),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    label("TAN"),
                    label("PAN"),
                    label("Deductor Type"),
                    label("Company Name"),
                    label("Responsible Person"),
                    label("Responsible Person PAN"),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    labelField(
                      context,
                      0.1,
                      (val) {},
                      (val) {},
                    ),
                    Row(
                      children: [
                        labelField(
                          context,
                          0.1,
                          (val) {},
                          (val) {},
                        ),
                        label("GSTN"),
                        labelField(
                          context,
                          0.1,
                          (val) {},
                          (val) {},
                        ),
                      ],
                    ),
                    labelField(
                      context,
                      0.3,
                      (val) {},
                      (val) {},
                    ),
                    labelField(
                      context,
                      0.3,
                      (val) {},
                      (val) {},
                    ),
                    labelField(
                      context,
                      0.3,
                      (val) {},
                      (val) {},
                    ),
                    labelField(
                      context,
                      0.1,
                      (val) {},
                      (val) {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );

  Widget body2(BuildContext context) => Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.black45,
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                label("Last Token Number"),
                Row(
                  children: [
                    label("Has regular return filed for Form 24Q earlier"),
                    CDropDown(
                      menuList: ['Yes', 'No'],
                      widthFactor: 0.05,
                    ),
                  ],
                ),
                Row(
                  children: [
                    label("Token No. of previous regular return (24Q)"),
                    labelField(
                      context,
                      0.1,
                      (val) {},
                      (val) {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.black45,
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                label("Address Change since last return"),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (val) {},
                    ),
                    label('Company'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (val) {},
                    ),
                    label('Responsible Person'),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  Widget body3(BuildContext context) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.black45,
          ),
        ),
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            label("Control Summary"),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    label("Challan Records"),
                    label("Amount Paid"),
                    label("Challan Amount"),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        labelField(
                          context,
                          0.06,
                          (val) {},
                          (val) {},
                        ),
                        CustomButton(
                          buttonName: 'Verify',
                          onPressed: () {},
                          verticalPad: 10,
                          horizontalPad: 10,
                        ),
                      ],
                    ),
                    labelField(
                      context,
                      0.1,
                      (val) {},
                      (val) {},
                    ),
                    labelField(
                      context,
                      0.1,
                      (val) {},
                      (val) {},
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    label("Deductee Records"),
                    label("Total TDS Deducted"),
                    label("Net Taxable Income"),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        labelField(
                          context,
                          0.1,
                          (val) {},
                          (val) {},
                        ),
                        CustomButton(
                          buttonName: 'Predict Defaults',
                          onPressed: () {},
                          verticalPad: 10,
                          horizontalPad: 20,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        labelField(
                          context,
                          0.1,
                          (val) {},
                          (val) {},
                        ),
                        CustomButton(
                          buttonName: 'Verify All PAN',
                          onPressed: () {},
                          verticalPad: 10,
                          horizontalPad: 20,
                        ),
                      ],
                    ),
                    labelField(
                      context,
                      0.1,
                      (val) {},
                      (val) {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );

  Widget body4(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.black45,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            label("Return Filing Status"),
          ],
        ),
      );

  Widget footer() => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Wrap(
                children: [
                  CustomButton(
                    onPressed: () {},
                    buttonName: "Save",
                    verticalPad: 10,
                    horizontalPad: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomButton(
                    onPressed: () {},
                    buttonName: "Cancel",
                    verticalPad: 10,
                    horizontalPad: 20,
                  ),
                ],
              ),
              Wrap(
                children: [
                  CustomButton(
                    onPressed: () {},
                    buttonName: "Edit",
                    verticalPad: 10,
                    horizontalPad: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomButton(
                    onPressed: () {},
                    buttonName: "Search",
                    verticalPad: 10,
                    horizontalPad: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomButton(
                    onPressed: () {},
                    buttonName: "Refresh",
                    verticalPad: 10,
                    horizontalPad: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomButton(
                    onPressed: () {},
                    buttonName: "Delete",
                    verticalPad: 10,
                    horizontalPad: 20,
                  ),
                ],
              ),
              CustomButton(
                onPressed: () {},
                buttonName: "Challan & Employee Entry",
                verticalPad: 10,
                horizontalPad: 20,
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                onPressed: () {},
                buttonName: "Exit Form 24Q",
                verticalPad: 20,
                horizontalPad: 50,
              ),
              CustomButton(
                onPressed: () {},
                buttonName: "Salary Detail",
                verticalPad: 20,
                horizontalPad: 50,
              ),
              CustomButton(
                onPressed: () {},
                buttonName: "Generate Returns",
                verticalPad: 20,
                horizontalPad: 50,
              ),
            ],
          ),
        ],
      );

  Widget label(String text) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomText(
          text: text,
          color: Colors.black,
          bold: true,
        ),
      );

  Widget labelField(BuildContext context, widthFactor, validator, saved) =>
      Container(
        padding: const EdgeInsets.all(4.0),
        width: MediaQuery.of(context).size.width * widthFactor,
        child: CustomField(
          validator: validator,
          onSaved: saved,
        ),
      );
}
