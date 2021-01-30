import 'package:fahita/src/helper/theme.dart';
import 'package:fahita/src/view/widget/head_profile.dart';
import 'package:fahita/src/view/widget/items_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile_screen extends StatefulWidget {
  @override
  _profile_screenState createState() => _profile_screenState();
}

class _profile_screenState extends State<profile_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderProfile(),
            items(Icon(Icons.access_time_outlined),"Joined Date","21 August 2020"),
            items(Icon(Icons.account_balance_wallet),"Active Orders","0"),
            items(Icon(Icons.store_mall_directory_rounded),"Orders Delivered","0"),
          ],
        ),
      ),
    );
  }
}




