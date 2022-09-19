import 'package:flutter/material.dart';

class getTextDataTable extends StatelessWidget {
  TextEditingController controller;
  String hintName;
  getTextDataTable({this.controller, this.hintName});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      width: 220,
      child: TextFormField(
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
            hintText: hintName,

            fillColor: Colors.grey[120],
            filled: true
        ),
      ),
    );
  }
}
