import 'package:fahita/src/helper/localTest.dart';
import 'package:fahita/src/helper/navigat.dart';
import 'package:fahita/src/helper/theme.dart';
import 'package:fahita/src/view/screen/products_screen.dart';
import 'package:fahita/src/view/widget/SearchFeild.dart';
import 'package:fahita/src/view/widget/customAppBar.dart';
import 'package:fahita/src/view/widget/networkImage.dart';
import 'package:fahita/src/view/widget/sliderWidget.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Home"),
      body: ListView(
        children: [
          Container(
            height: 230,
            width: double.infinity,
            child: SliderWidget(
              images: List.generate(
                sliderList.length,
                (index) => networkImage(
                  sliderList[index],
                ),
              ),
            ),
          ),
          // SizedBox(height: 20),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: Text(
          //     "categoris",
          //     style: TextStyle(
          //       color: primaryColor,
          //       fontSize: 25,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          SearchFeild(),
          SizedBox(height: 10),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: (MediaQuery.of(context).size.width /
                MediaQuery.of(context).size.height /
                0.27),
            padding: EdgeInsets.all(5),
            children: List.generate(categoris.length, (index) {
              return InkWell(
                onTap: () => push(context, ProductsScreen()),
                child: Card(
                  margin: EdgeInsets.all(5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: categoris[index].color,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, left: 5),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              categoris[index].title,
                              textAlign: TextAlign.center,
                              style: body1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          categoris[index].img,
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
