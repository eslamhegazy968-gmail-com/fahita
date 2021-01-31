import 'package:fahita/src/helper/theme.dart';
import 'package:flutter/material.dart';

class ButtomBarCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.only(left: 27),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Text(
                    "Total : ",
                    style: title1,
                  ),
                  Text(
                    '\$88',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
            ),
            Container(
              width: 120,
              height: 70,
              color: Colors.deepOrange,
              child: Center(
                  child: Text(
                'Check Out',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            )
          ],
        ),
      ),
    );
  }
}
