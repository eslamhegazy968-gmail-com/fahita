import 'package:fahita/src/helper/theme.dart';
import 'package:fahita/src/view/widget/networkImage.dart';
import 'package:flutter/material.dart';

class CartItemDetail extends StatefulWidget {
  @override
  _CartItemDetailState createState() => _CartItemDetailState();
}

class _CartItemDetailState extends State<CartItemDetail> {
  int counter = 1;

  void incrementCounter() {
    setState(() {
      if (counter == 99) {
        return null;
      }
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter == 0) {
        return null;
      }
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 80,
          width: 80,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: networkImage(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Pl%C3%A1tanos_de_Canarias.JPG/280px-Pl%C3%A1tanos_de_Canarias.JPG",
              height: 80,
              width: 80,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Essential Kits',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                '\$ 10',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                        onTap: decrementCounter,
                        child: Icon(
                          Icons.remove_circle,
                          color: Colors.white,
                          size: 30,
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 6, right: 6),
                      child: Text(
                        '$counter',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                        onTap: incrementCounter,
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.white,
                          size: 30,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Kg",
                    style: body2.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
