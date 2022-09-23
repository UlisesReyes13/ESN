import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class getSearchField extends StatelessWidget {
  TextEditingController controller;
  List suggestions;
  String hintName;

  getSearchField({this.controller, this.suggestions, this.hintName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 22),
      width: 220,
      child: SearchField(
        suggestionState: Suggestion.expand,
        searchInputDecoration: InputDecoration(
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
        suggestions: suggestions,
        textInputAction: TextInputAction.next,
        hasOverlay: true,
        controller: controller,
        maxSuggestionsInViewPort: 5,
        itemHeight: 45,
        onSuggestionTap: (x) {},
      ),
    );
  }
}
