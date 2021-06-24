import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  TopBar({Key? key}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < buttonInfo.length; i++) _dropDownButton(i),
        Spacer(),
        Text(
          'TDSMANTRA 21-22',
          style: TextStyle(
            fontSize: 17,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _dropDownButton(i) {
    return PopupMenuButton<String>(
      offset: Offset.fromDirection(1.5708, 30),
      elevation: 0,
      tooltip: '',
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      onSelected: (choice) {
        int index = buttonInfo[i][1].indexOf(choice);
        print(index.toString());
        buttonInfo[i][2][index]();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Text(
          buttonInfo[i][0],
          style: TextStyle(
            color: Colors.black,
            fontSize: 13,
          ),
        ),
      ),
      itemBuilder: (BuildContext context) {
        List<String> menu = buttonInfo[i][1];
        return menu.map(
          (String choice) {
            return PopupMenuItem<String>(
              value: choice,
              height: 20,
              padding: EdgeInsets.all(5),
              child: Container(
                child: Text(
                  choice,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ),
            );
          },
        ).toList();
      },
    );
  }
}

final List buttonInfo = [
  [
    'Masters',
    <String>[],
  ],
  [
    'Regular Return',
    <String>[
      'Form 24Q',
      'Import From Excel',
      'Import From TDS File(Consolidated Statement)',
    ],
    <Function>[
      () {
        print('24Q');
      },
      () {
        print('24Q 12');
      },
      () {
        print('24Q 1234');
      },
    ]
  ],
  [
    'Correction return',
    <String>[
      'Import Data For Correction',
      'Make Corrections',
    ],
    <Function>[
      () {
        print('24Q');
      },
      () {
        print('24Q 12');
      },
    ]
  ],
  [
    'Reports',
    <String>[
      'Form 16 Merge PartA - PartB',
    ],
    <Function>[
      () {
        print('24Q');
      },
    ]
  ],
  [
    'NDSL Information',
    <String>[
      'View BIN Information Online',
    ],
    <Function>[
      () {
        print('24Q');
      },
    ]
  ],
  [
    'TRACES information',
    <String>[
      'PAN Name Extractor',
      'Request For TDS/Conso File Online',
      'Request For Form 16A',
      'Request For Defaults/Justification Report',
      'Add Challan/ PAN Correction/ Challan Correction',
      'Download Requested Files',
      'View Default Summary',
      'View Statement Status',
      'View TDS/TCS Credit',
      'Download PDF Converter Utility To Generate TDS Certificate',
      'Download PDF Converter Utility To Generate TDS Certificate Part-B',
      'Download Justification Report Generation Utility',
    ],
    <Function>[
      () {
        print('24Q');
      },
      () {
        print('24Q 12');
      },
      () {
        print('24Q 1234');
      },
      () {
        print('24Q');
      },
      () {
        print('24Q 12');
      },
      () {
        print('24Q 1234');
      },
      () {
        print('24Q');
      },
      () {
        print('24Q 12');
      },
      () {
        print('24Q 1234');
      },
      () {
        print('24Q');
      },
      () {
        print('24Q 12');
      },
      () {
        print('24Q 1234');
      },
    ]
  ],
  [
    'Utilities',
    <String>[
      'Rename PDF Files',
      'File Return Online',
      'Update File Validation Utility - [ 7.1 ]',
      'Update Software',
    ],
    <Function>[
      () {
        print('24Q');
      },
      () {
        print('24Q 12');
      },
      () {
        print('24Q 1234');
      },
      () {
        print('24Q 1234');
      },
    ]
  ],
  [
    'Exit',
    <String>[],
  ],
];
