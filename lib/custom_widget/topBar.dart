import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  TopBar({Key? key}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  bool _hovering = false;
  bool _isBackPressedOrTouchedOutSide = false,
      _isDropDownOpened = false,
      _isPanDown = false;
  final List<String> _list = ["Abc", "DEF", "GHI", "JKL", "MNO", "PQR"];
  String _selectedItem = 'Select Item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          backgroundColor: Colors.grey[300],
          elevation: 0,
          title: _options(),
        ),
      ),
      body: Center(),
    );
  }

  final List buttonInfo = [
    [
      'Option 1',
      <String>[
        'Option menu 1',
        'Option menu 2',
        'Option menu 3',
        'Option menu 4',
      ],
    ],
    [
      'Option 2',
      <String>[
        'Option menu 1',
        'Option menu 2',
        'Option menu 3',
        'Option menu 4',
      ],
    ],
    [
      'Option 3',
      <String>[
        'Option menu 1',
        'Option menu 2',
        'Option menu 3',
        'Option menu 4',
      ],
    ],
    [
      'Option 4',
      <String>[
        'Option menu 1',
        'Option menu 2',
        'Option menu 3',
        'Option menu 4',
      ],
    ],
    [
      'Option 5',
      <String>[
        'Option menu 1',
        'Option menu 2',
        'Option menu 3',
        'Option menu 4',
      ],
    ],
    [
      'Option 6',
      <String>[
        'Option menu 1',
        'Option menu 2',
        'Option menu 3',
        'Option menu 4',
      ],
    ],
    [
      'Option 7',
      <String>[
        'Option menu 1',
        'Option menu 2',
        'Option menu 3',
        'Option menu 4',
      ],
    ],
    [
      'Option 8',
      <String>[
        'Option menu 1',
        'Option menu 2',
        'Option menu 3',
        'Option menu 4',
      ],
    ],
  ];

  Widget _options() => Row(
        children: [
          for (var i = 0; i < buttonInfo.length; i++) _dropDownButton(i),
        ],
      );

  Widget _dropDownButton(i) {
    return PopupMenuButton<String>(
      offset: Offset.fromDirection(90, 40),
      elevation: 0,
      color: Colors.grey[200],      
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      tooltip: null,
      onSelected: (choice) {
        
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 5,
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
              child: Text(
                choice,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
            );
          },
        ).toList();
      },
    );
  }
}
