import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'helper/theme.dart';
import 'view/screen/splash_screen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        theme: ThemeData(
          accentColor: accentColor,
          primaryColor: primaryColor,
          fontFamily: "cairo",
          iconTheme: IconThemeData(color: primaryColor),
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
              color: Color.fromRGBO(72, 69, 76, 1),
            ),
            centerTitle: true,
          ),
        ),
      ),
    );
  }
}
