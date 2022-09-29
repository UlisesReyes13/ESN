import 'package:flutter/material.dart';

class getTextField extends StatelessWidget {
  TextEditingController controller;
  TextInputType inputType;

  getTextField(
      {this.controller, this.inputType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        keyboardType: inputType,
        textCapitalization: TextCapitalization.words,
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2.0, color: Colors.black26, style: BorderStyle.solid
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2.0, color: Colors.blue, style: BorderStyle.solid
              ),
            ),
            fillColor: Colors.grey[120],
            filled: true
        ),
      ),
    );
  }
}