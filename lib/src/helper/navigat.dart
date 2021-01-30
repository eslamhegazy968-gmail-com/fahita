import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

push(BuildContext context, Widget widget) =>
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));

replacement(BuildContext context, Widget widget) =>
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => widget,
    ));
