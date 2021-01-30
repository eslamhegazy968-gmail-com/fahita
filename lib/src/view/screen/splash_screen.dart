import 'package:fahita/src/helper/theme.dart';
import 'package:fahita/src/view/screen/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';
import 'auth/start_app.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => start_app()),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 3),
            Image.asset(
              'assets/images/log.png',
              height: 150,
              width: 150,
            ),
            Expanded(
              child: SizedBox(),
            ),
            Shimmer.fromColors(
              baseColor: primaryColor,
              highlightColor: accentColor,
              child: Text(
                'welcom to in Fahite',
                textAlign: TextAlign.center,
                style: body1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
