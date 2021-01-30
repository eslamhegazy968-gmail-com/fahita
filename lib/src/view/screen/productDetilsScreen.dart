import 'package:fahita/src/helper/localTest.dart';
import 'package:fahita/src/helper/theme.dart';
import 'package:fahita/src/view/widget/customAppBar.dart';
import 'package:fahita/src/view/widget/networkImage.dart';
import 'package:flutter/material.dart';

class ProductDetilsScreen extends StatefulWidget {
  @override
  _ProductDetilsScreenState createState() => _ProductDetilsScreenState();
}

class _ProductDetilsScreenState extends State<ProductDetilsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Bnana"),
      body: ListView(
        children: [
          Container(
            height: 230,
            width: double.infinity,
            child: networkImage(
                "https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg"),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  "bnana",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text("Medium 1 kg", style: title3),
                SizedBox(height: 15),
                Text(
                  "3.00 \$",
                  style: title2.copyWith(
                    color: primaryColor,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(height: 15),
                Text(
                  "Product description text developed from the dashboard, which is a description that displays all the product features",
                  style: body1.copyWith(color: Colors.grey),
                ),
                SizedBox(height: 20),
                Text(
                  "Select Quantity",
                  style: title2,
                ),
                SizedBox(height: 10),
                Container(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: quantity.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            for (var i = 0; i < quantity.length; i++) {
                              // TO DO
                              if (i == index) {
                                quantity[i].selected = true;
                              } else {
                                quantity[i].selected = false;
                              }
                            }
                          });
                        },
                        child: AnimatedContainer(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: quantity[index].selected == true
                                  ? primaryColor.withOpacity(0.5)
                                  : Colors.grey,
                            ),
                            color: quantity[index].selected == true
                                ? primaryColor.withOpacity(0.5)
                                : Colors.white,
                          ),
                          duration: Duration(milliseconds: 500),
                          width: 90,
                          height: 70,
                          child: Center(
                            child: Text(
                              quantity[index].quntity,
                              style: body2,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    "or",
                    style: title3,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text("Put Quantity per Kg :"),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: EdgeInsets.only(
                            bottom: 20,
                          ),
                          hintText: "kg",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: 300,
                    height: 40,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {},
                      color: primaryColor,
                      textColor: Colors.white,
                      child: Text(
                        "add to cart",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
