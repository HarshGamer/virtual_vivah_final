import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class EditText extends StatefulWidget {
  final String hintText;
  final Color editTextBorderColor;
  final String labelText;

  const EditText({Key key, this.hintText, this.editTextBorderColor, this.labelText}) : super(key: key);

  @override
  _EditTextState createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
  FocusNode focusNode = FocusNode();
  String hintTextInner = hintText;

  static String get hintText => null;

  get editTextBorderColor => null;

  get labelText => null;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode.addListener(() {
      if(focusNode.hasFocus) {
        hintTextInner = '';
      }
      else {
        hintTextInner = hintText;
      }
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: subColor,
      focusNode: focusNode,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.grey[400],
        ),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(color: Colors.grey[400]),

        ),
        focusedBorder: new OutlineInputBorder(
          borderSide: new BorderSide(color: mainColor),

        ),
        hintStyle: TextStyle(
            color: Colors.grey[400]
        ),
        hintText: hintTextInner,
      ),
    );
  }
}
