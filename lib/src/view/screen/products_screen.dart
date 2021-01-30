import 'package:fahita/src/helper/localTest.dart';
import 'package:fahita/src/helper/navigat.dart';
import 'package:fahita/src/helper/theme.dart';
import 'package:fahita/src/view/screen/productDetilsScreen.dart';
import 'package:fahita/src/view/widget/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class ProductsScreen extends StatefulWidget {
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Vegetables"),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: (1 / 1.5),
        padding: EdgeInsets.all(10),
        children: List.generate(
          products.length,
          (index) {
            return InkWell(
              onTap: () => push(context, ProductDetilsScreen()),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        child: Image.asset(
                          products[index].img,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "${products[index].name} (${products[index].typeShop})",
                      style: body2,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "\$ " + products[index].price.toString(),
                      style: title1,
                    ),
                    Center(
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.all(0),
                        elevation: 0,
                        splashColor: primaryColor,
                        child: Ink(
                          decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: primaryColor
                              // gradient: new LinearGradient(
                              //   colors: [Colors.green[300], primaryColor],
                              //   begin: Alignment.topCenter,
                              //   end: Alignment.bottomCenter,
                              // ),
                              ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: new Text("Add to cart",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
