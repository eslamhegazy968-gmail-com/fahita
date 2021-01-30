import 'package:fahita/src/view/widget/signup_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Signup_Screen.dart';
import 'login_screen.dart';

class start_app extends StatefulWidget {
  @override
  _start_appState createState() => _start_appState();
}

class _start_appState extends State<start_app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                  child: Text("Welcome",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: "PottaOne"
                      ))),
              SizedBox(
                height: 40,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/log.png"),
                    )),
              ),
              SizedBox(
                height: 80,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return SignupScreen();
                    }));
                  }, child: SignupButton("Sign Up", Colors.purple,)),
              SizedBox(
                height: 30,
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return LoginScreen();
                    }));
                  },
                  child: SignupButton("Login", Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
