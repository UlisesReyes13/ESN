import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class getSearchField extends StatefulWidget {
  TextEditingController controller;
  List suggestions;
  String hintName;
  String valor;
  String valor1;
  bool val;

  getSearchField(
      {this.controller,
      this.suggestions,
      this.hintName,
      this.valor,
      this.valor1,
      this.val = false});

  @override
  State<getSearchField> createState() => _getSearchFieldState();
}

class _getSearchFieldState extends State<getSearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      width: 400,
      child: SearchField(
        suggestionState: Suggestion.expand,
        searchInputDecoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          hintText: widget.hintName,
          labelText: widget.hintName,
          fillColor: Colors.grey[200],
          filled: true,
        ),
        suggestions: widget.suggestions,
        textInputAction: TextInputAction.next,
        hasOverlay: true,
        controller: widget.controller,
        maxSuggestionsInViewPort: 5,
        itemHeight: 45,
        onSuggestionTap: (x) {
          setState(() {
            if (widget.valor == widget.valor1) {
              widget.val = true;
            } else {
              widget.val = false;
            }
          });
        },
      ),
    );
  }
}
