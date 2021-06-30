import 'package:flutter/material.dart'; 

class CustomField extends StatelessWidget {
  final validator, onSaved,align ,controller,maxlength,onChanged,initval;
   
    CustomField({
    Key? key, 
    this.align,
    this.controller,
    this.initval,
    this.maxlength,
    this.onChanged,
    required this.validator,
    required this.onSaved, 
  }) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: width,
      height: 27,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(3),
      ),
      child: TextFormField( textAlign: align, maxLength: maxlength,initialValue: initval,
        style: TextStyle(
          fontSize: 13,
        ), 
      // inputFormatters: <TextInputFormatter>[ 
      //    FilteringTextInputFormatter.allow(RegExp(r"[\d.]")),   //insert only decimals numbers
      //           ], 
        decoration: InputDecoration( counterText: '', 
          isDense: true,
          border: InputBorder.none,
        ),
        validator: validator,
        onSaved: onSaved,
        onChanged: onChanged,
        controller: controller,
        
      ),
    );
  }
}
