import 'package:fahita/src/view/screen/auth/pin_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class send_n_phone extends StatefulWidget {

  @override
  _send_n_phoneState createState() => _send_n_phoneState();
}

class _send_n_phoneState extends State<send_n_phone> {
  TextEditingController _controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Continue With phone",
          style: TextStyle(color: Colors.black, fontFamily: "Acme"),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.clear,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 40,left: 40,bottom: 10,top: 70),
                        child: Card(
                          elevation: 2,
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ) ,
                          child: Padding(
                            padding: EdgeInsets.only(right: 15,left: 10,top: 7,bottom: 7),
                            child: TextField(
                              controller: _controller,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                hintText: "Enter Your Phone Number",
                                hintStyle: TextStyle(color: Colors.blue.withOpacity(0.4)),
                                prefixIcon: Icon(Icons.phone_android,color: Colors.blue,),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return pincode_screen();
                          }));
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text("Continue",style: TextStyle(color: Colors.blue,fontFamily: "Acme",fontSize: 19),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/phone.png"),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 64),
              child: Text(
                "You Will Receive a Digit Code To Verify Next.",
                style: TextStyle(fontSize: 20, fontFamily: "Acme"),
                textAlign: TextAlign.center,
              ),
            ),

          ],
        ),
      ),
    );
  }
}