import 'package:flutter/material.dart';

class getTextDataTable extends StatelessWidget {
  TextEditingController controller;
  String hintName;
  bool isObscureText;
  TextInputType inputType;
  bool isEnable;


  getTextDataTable({this.controller, this.hintName,this.isObscureText = false, this.inputType, this.isEnable = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      width: 220,
      child: TextFormField(
        controller: controller,
        obscureText: isObscureText,
        enabled: isEnable,
        keyboardType: inputType,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          hintText: hintName,
          labelText: hintName,
          fillColor: Colors.grey[200],
          filled: true,
        ),
      ),
    );
  }
}