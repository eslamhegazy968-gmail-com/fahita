import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String name;
  final TextInputType type;
  final Icon icons;
  final TextEditingController controller;

  CustomTextField(this.name, this.type, this.icons, this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, left: 8, top: 5, bottom: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: TextField(
        controller: controller,
        keyboardType: type,
        enableInteractiveSelection: false,
        decoration: InputDecoration(
            hintText: name,
            hintStyle: TextStyle(fontFamily: "Acme"),
            prefixIcon: icons,
            enabledBorder: InputBorder.none,
            border: InputBorder.none),
      ),
    );
  }
}
