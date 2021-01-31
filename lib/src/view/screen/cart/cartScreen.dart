import 'package:fahita/src/view/screen/cart/widget/buttomBar.dart';
import 'package:fahita/src/view/widget/customAppBar.dart';
import 'package:flutter/material.dart';
import 'widget/cartItemDetails.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Shopping Cart",),
      bottomNavigationBar: ButtomBarCart(),
      // backgroundColor: Color.fromRGBO(220, 220, 220, 1.0),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                  // height: 410,
                  width: MediaQuery.of(context).size.width * 1.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0),
                            spreadRadius: 1,
                            blurRadius: 8)
                      ]),
                  child: ListView(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'My products',
                              style: TextStyle(fontSize: 20),
                            ),
                            Spacer(),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.deepOrange),
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: Divider(
                            thickness: 2,
                          )),
                      Container(
                        margin: EdgeInsets.only(
                          left: 20,
                        ),
                        child: CartItemDetail(),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: Divider(
                            thickness: 2,
                          )),
                      Container(
                        margin: EdgeInsets.only(
                          left: 20,
                        ),
                        child: CartItemDetail(),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
