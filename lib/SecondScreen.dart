import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondScreen extends StatelessWidget {
  String fullName;
  String phoneNumber;
  SecondScreen({Key key, @required this.fullName,this.phoneNumber}) :super (
    key: key
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondScreen"),
      ),
      body: Container(
        height: 300,
        color: Colors.deepOrangeAccent,
        alignment: Alignment.center,
margin: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             child: Text(fullName,style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.bold
             ),),
           ),
           Container(
             child: Text(phoneNumber,style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.bold
             ),),
           ),
         ],
        ),
      ),
    );
  }
}
