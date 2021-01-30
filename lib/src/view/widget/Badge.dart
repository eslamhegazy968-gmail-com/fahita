import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final Widget child;
  final int value;
  final Color color;
  final Function onTap;
  Badge({@required this.child, @required this.value, this.color, this.onTap});
  @override
  Widget build(BuildContext context) {
//    print('${value.compareTo('1')}');
    return Stack(
      alignment: Alignment.center,
      children: [
        InkWell(onTap: onTap, child: child),
        value.compareTo(0) == 0
            ? Container()
            : Positioned(
                top: 8.0,
                left: 8.0,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: color != null ? color : Colors.redAccent),
                  constraints: BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: Text(
                    value.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
      ],
    );
  }
}
