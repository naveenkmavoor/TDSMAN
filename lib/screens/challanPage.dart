import 'package:flutter/material.dart';
import 'package:tdsman_windows_app/custom_widget/customButton.dart';
import 'package:tdsman_windows_app/custom_widget/customDropDown.dart';
import 'package:tdsman_windows_app/custom_widget/customText.dart';
import 'package:tdsman_windows_app/custom_widget/textField.dart';

class ChallanPage extends StatefulWidget {
  const ChallanPage({Key? key}) : super(key: key);

  @override
  _ChallanPageState createState() => _ChallanPageState();
}

class _ChallanPageState extends State<ChallanPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        header(),
        body(context),
        footer(),
      ],
    );
  }

  Widget header() => Flexible(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              label("Company Name"),
              CDropDown(
                menuList: [
                  'Sec Govt High School1',
                  'Sec Govt High School2',
                  'Sec Govt High School3',
                ],
                widthFactor: 0.4,
              ),
            ],
          ),
        ),
      );

  Widget body(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.black45,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                label("Employee PAN"),
                label("Employee Name"),
                label("Employee Category"),
                label("Employee Ref. No."),
                label("Designation"),
                label("Email"),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    labelField(
                      context,
                      0.15,
                      (val) {},
                      (val) {},
                    ),
                    Checkbox(
                      value: false,
                      onChanged: (val) {},
                    ),
                  ],
                ),
                labelField(
                  context,
                  0.25,
                  (val) {},
                  (val) {},
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CDropDown(
                    menuList: [
                      "G-General",
                      "2AG",
                      "OBC",
                    ],
                    widthFactor: 0.25,
                  ),
                ),
                labelField(
                  context,
                  0.1,
                  (val) {},
                  (val) {},
                ),
                labelField(
                  context,
                  0.25,
                  (val) {},
                  (val) {},
                ),
                labelField(
                  context,
                  0.2,
                  (val) {},
                  (val) {},
                ),
              ],
            ),
          ],
        ),
      );

  Widget footer() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  onPressed: () {},
                  buttonName: "Add",
                  verticalPad: 10,
                  horizontalPad: 20,
                ),
                SizedBox(
                  width: 20,
                ),
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
                  buttonName: "Delete",
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
                  buttonName: "Exit",
                  verticalPad: 10,
                  horizontalPad: 20,
                ),
              ],
            ),
          ],
        ),
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
