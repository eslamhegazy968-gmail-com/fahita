import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupButton extends StatelessWidget {
  final String name;
  final Color color;

  SignupButton(this.name, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
          child: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      )),
    );
  }
}
