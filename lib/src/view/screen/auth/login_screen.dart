import 'package:fahita/src/helper/navigat.dart';
import 'package:fahita/src/helper/theme.dart';
import 'package:fahita/src/view/screen/auth/pin_code.dart';
import 'package:fahita/src/view/screen/auth/send_pin_code.dart';
import 'package:fahita/src/view/screen/main_screen.dart';
import 'package:fahita/src/view/widget/TextFields.dart';
import 'package:fahita/src/view/widget/signup_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Signup_Screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool ishiden = false;

  ///////////TextFields Controllers
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.20,
              child: Text(
                "Login!",
                style: TextStyle(
                    fontFamily: "PottaOne",
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height:MediaQuery.of(context).size.height*0.80 ,
            decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.5),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text("Phone Number",
                        style: TextStyle(
                            fontFamily: "Acme",
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 16),
                    CustomTextField("Enter Your Email",
                        TextInputType.emailAddress, Icon(Icons.email), phone),
                    SizedBox(height: 20),
                    Text("Password",
                        style: TextStyle(
                            fontFamily: "Acme",
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    ////password field
                    Container(
                      padding: EdgeInsets.only(
                          right: 10, left: 8, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: TextField(
                        controller: password,
                        obscureText: ishiden,
                        decoration: InputDecoration(
                            hintText: "***********",
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  ishiden = !ishiden;
                                });
                              },
                              icon: Icon(ishiden
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                            prefixIcon: Icon(Icons.lock_rounded),
                            enabledBorder: InputBorder.none,
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ////forgot password
                    InkWell(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (_) {
                        //   return send_n_phone();
                        // }));
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_){
                              return send_n_phone();
                            }));
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () => push(context, MainScreen()),
                        child: SignupButton("Login", primaryColor),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Text(
                        "- - - - Or - - - -",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),

                    Container(
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(color: Colors.white),
                          ),
                          InkWell(
                            onTap: () => replacement(context, SignupScreen()),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: "PottaOne",
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
