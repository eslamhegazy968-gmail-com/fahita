import 'package:fahita/src/helper/theme.dart';
import 'package:flutter/material.dart';

class SearchFeild extends StatelessWidget {
  final TextEditingController controller;

  const SearchFeild({Key key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "SEARCH PRODUCTS",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
