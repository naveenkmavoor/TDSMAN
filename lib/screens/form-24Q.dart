import 'package:flutter/material.dart';
import 'package:tdsman_windows_app/custom_widget/button.dart';
import 'package:tdsman_windows_app/custom_widget/labelled-dropdown.dart';
import '/custom_widget/textField.dart';

class Form24Q extends StatefulWidget {
  const Form24Q({Key? key}) : super(key: key);

  @override
  _Form24QState createState() => _Form24QState();
}

class _Form24QState extends State<Form24Q> {
  List<String> financialYears = ["2020-21", "2021-22"];
  List<String> companies = ["ArcherStack Private Limited"];
  List<String> quarters = ["Q1", "Q2"];
  List<String> remarks = ["Normal", "Abnormal"];
  String? selectedFY, selectedCompany, selectedQuarter, selectedRemarks;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("Form 24Q (Salary)"),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back))),
        body: Container(
          child: Column(
            children: [
              selectionOptions(),
              Divider(),
              formContent(context),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.amber[100],
                      ),
                      child:
                          SpecialButton(onclick: () {}, text: "Exit From 24Q")),
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.amber[100],
                      ),
                      child: SpecialButton(
                          onclick: () {}, text: "Back To Home Screen"))
                ],
              )
            ],
          ),
        ));
  }

  Row formContent(BuildContext context) {
    return Row(
      children: [details(context), employeeList(context)],
    );
  }

  Container employeeList(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      decoration:
          BoxDecoration(border: Border.all(width: 2, color: Colors.grey)),
      height: MediaQuery.of(context).size.height - 200,
      width: MediaQuery.of(context).size.width * 0.57,
      child: Column(
        children: [
          Text("Employees", style: TextStyle(fontWeight: FontWeight.bold)),
          Divider(),
          Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(columns: [
                        DataColumn(label: Text("S.No.")),
                        DataColumn(label: Text("PAN No.")),
                        DataColumn(label: Text("Party Name")),
                        DataColumn(label: Text("Section")),
                        DataColumn(label: Text("Amount")),
                        DataColumn(label: Text("Date")),
                        DataColumn(label: Text("Total")),
                        DataColumn(label: Text("Tax Deposited"))
                      ], rows: [
                        DataRow(cells: [
                          DataCell(Text("1")),
                          DataCell(Text("MIRPS4361K")),
                          DataCell(Text("Shivam Singh")),
                          DataCell(Text("192A")),
                          DataCell(Text("500000")),
                          DataCell(Text("31/12/12")),
                          DataCell(Text("1")),
                          DataCell(Text("400000")),
                        ])
                      ])))),
          Row(
            children: [
              CustomField(
                  validator: (str) {}, width: 100, label: "Challan Amount"),
              CustomField(validator: (str) {}, width: 100, label: "Difference"),
              CustomField(
                  validator: (str) {}, width: 100, label: "Total Tax Deposited")
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SpecialButton(onclick: () {}, text: "Edit"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SpecialButton(onclick: () {}, text: "Search"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SpecialButton(onclick: () {}, text: "Refresh"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SpecialButton(onclick: () {}, text: "Delete"),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }

  Container details(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        decoration:
            BoxDecoration(border: Border.all(width: 2, color: Colors.grey)),
        height: MediaQuery.of(context).size.height - 200,
        width: MediaQuery.of(context).size.width / 2.5,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomField(
                  validator: (str) {}, width: 200, label: "Challan S.No."),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomField(
                      validator: (str) {},
                      width: 100,
                      label: "Trf Vctw(DDO Sl.)"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomField(
                      validator: (str) {}, width: 100, label: "Date"),
                ),
              ],
            ),
            Divider(),
            Expanded(
                child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomField(
                      validator: (str) {}, width: 200, label: "Employee Srl."),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomField(
                      validator: (str) {}, width: 200, label: "Employee Name"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomField(
                      validator: (str) {}, width: 200, label: "PAN"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomField(
                      validator: (str) {},
                      width: 200,
                      label: "Date (DD/MM/YYYY)"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomField(
                      validator: (str) {},
                      width: 200,
                      label: "Amount of Payment [320]"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomField(
                      validator: (str) {},
                      width: 200,
                      label: "Income Tax [321]"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomField(
                      validator: (str) {}, width: 200, label: "Surcharge"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomField(
                      validator: (str) {}, width: 200, label: "Cess [322]"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomField(
                      validator: (str) {}, width: 200, label: "Total [323]"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomField(
                      validator: (str) {},
                      width: 200,
                      label: "Tex Deposited [324]"),
                ),
                LabelledDropDown(list: remarks, label: "Remarks"),
                CustomField(
                    validator: (str) {},
                    width: 100,
                    label: "Certificate No. [327]")
              ],
            )),
            Divider(),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SpecialButton(onclick: () {}, text: "Save"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SpecialButton(onclick: () {}, text: "Cancel"),
              )
            ])
          ],
        ));
  }

  Row selectionOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LabelledDropDown(list: financialYears, label: "Select Financial Year"),
        LabelledDropDown(list: quarters, label: "Select Quarter"),
        LabelledDropDown(list: companies, label: "Select Company"),
      ],
    );
  }
}
