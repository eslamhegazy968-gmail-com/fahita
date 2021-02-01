import 'package:fahita/src/helper/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../widget/curve_header_screen.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          ClipPath(
            clipper: myclipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              color: primaryColor,
            ),
          ),
          Align(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                    child: Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: "PottaOne"),
                )),
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  maxRadius: 50,
                  backgroundImage: AssetImage("assets/images/log.png"),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.white,
                ),
                Text("User Name",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        fontFamily: "Acme")),
                Text(
                  "eslamhegazy968@gmail.com",
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
