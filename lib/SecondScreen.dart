import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  String fullName;
  String phoneNumber;
  String address;

  SecondScreen(
      {Key key, @required this.fullName, this.phoneNumber, this.address})
      : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondScreen"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(widget.fullName, style: getStyle()),
            SizedBox(width: 30),
            Text(
              widget.address,
              style: getStyle(),
            ),
            SizedBox(width: 30),
            Text(
              widget.phoneNumber,
              style: getStyle(),
            ),
          ],
        ),
      ),
    );
  }

  getStyle() {
    return TextStyle(fontSize: 20);
  }
}
