import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class items extends StatelessWidget {


 final String title;
 final String des;
 final Icon icon;

  const items(this.icon,this.title, this.des);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15,left: 15,bottom: 15),
      child: Transform.translate(
        offset: Offset(0,-60),
        child: Card(
          child: ListTile(
            title: Text("Joined Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("21 August 2020",style: TextStyle(color: Colors.grey[900]),),
            leading: CircleAvatar(
              child: Icon(Icons.access_time_outlined,size: 40,color: Colors.red,),
              backgroundColor: Colors.white,
              radius: 40,
            ),
          ),
        ),
      ),
    );
  }
}