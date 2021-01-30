import 'package:flutter/material.dart';

import 'Badge.dart';

AppBar customAppBar(BuildContext context, String title) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    actions: [
      Badge(
        value: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 30,
          ),
        ),
        onTap: () {},
      ),
    ],
  );
}
