import 'package:flutter/material.dart';

class CDropDown extends StatefulWidget {
  final List<String> menuList;
  final double widthFactor;
  const CDropDown({
    Key? key,
    required this.menuList,
    required this.widthFactor,
  }) : super(key: key);

  @override
  _CDropDownState createState() => _CDropDownState();
}

class _CDropDownState extends State<CDropDown> {
  String _value = 'Select option';

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: Offset.fromDirection(1.5708, 30),
      elevation: 0,
      tooltip: '',
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      onSelected: (String? choice) {
        setState(() {
          _value = choice!;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width * widget.widthFactor,
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black38,
          ),
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(3),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Row(
          children: [
            Container(
              width:
                  MediaQuery.of(context).size.width * widget.widthFactor - 46,
              child: Text(
                _value,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
            ),
          ],
        ),
      ),
      itemBuilder: (BuildContext context) {
        return [
          for (var i = 0; i < widget.menuList.length; i++)
            PopupMenuItem<String>(
              height: 20,
              padding: EdgeInsets.all(5),
              child: Text(widget.menuList[i]),
              value: widget.menuList[i],
            ),
        ];
      },
    );
  }
}
