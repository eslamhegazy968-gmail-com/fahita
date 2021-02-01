import 'package:fahita/src/helper/theme.dart';
import 'package:fahita/src/view/screen/profile/component/head_profile.dart';
import 'package:fahita/src/view/screen/profile/component/items_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderProfile(),
            Items(Icon(Icons.access_time_outlined), "Joined Date",
                "21 August 2020"),
            Items(Icon(Icons.account_balance_wallet), "Active Orders", "0"),
            Items(Icon(Icons.store_mall_directory_rounded), "Orders Delivered",
                "0"),
          ],
        ),
      ),
    );
  }
}
