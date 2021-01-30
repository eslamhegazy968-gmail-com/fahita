import 'package:fahita/src/view/widget/signup_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../main_screen.dart';
class pincode_screen extends StatefulWidget {
  @override
  _pincode_screenState createState() => _pincode_screenState();
}

class _pincode_screenState extends State<pincode_screen> {
  TextEditingController _pincintroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Verify Phone",
          style: TextStyle(color: Colors.black, fontFamily: "Acme"),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Code Is Sent To : ",style: TextStyle(fontSize: 15,fontFamily: "PottaOne"),),
                Text("01274996453",style: TextStyle(fontSize: 15,color: Colors.indigo,fontFamily: "PottaOne"),),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.50,
                  width: MediaQuery.of(context).size.width*0.70,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/phone.png")
                      )
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.50,
                  child: PinFieldAutoFill(
                    codeLength: 4,
                    decoration: UnderlineDecoration(
                        colorBuilder:FixedColorBuilder((Colors.indigo),),
                        textStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontFamily: "PottaOne")
                    ),
                    controller: _pincintroller,
                    onCodeChanged: (value){
                      print(value);
                    },
                  ),
                ),
              ],
            ),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_){
                    return MainScreen();
                  }));
                },
                child: SignupButton("Login",Colors.purple)),
          ],
        ),
      ),
    );
  }
}