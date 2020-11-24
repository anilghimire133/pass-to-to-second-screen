import 'package:flutter/material.dart';
import 'package:pass_data_to_second_screen/SecondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  final _controllerFullName = TextEditingController();
  final _controllerPhoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pass data to second screen"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10.0),
          color: Colors.deepOrangeAccent,
          height: 300,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: TextField(
                    decoration: InputDecoration(hintText: "Full Name"),
                    controller: _controllerFullName,
                  ),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(hintText: "Phone Number"),
                    keyboardType: TextInputType.phone,
                    controller: _controllerPhoneNumber,
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          passDataToSecondScreen(context);
                        });
                      },
                      color: Colors.deepPurpleAccent,
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void passDataToSecondScreen(BuildContext context) {
    String sentFullName = _controllerFullName.text;
    String sentPhoneNumber = _controllerPhoneNumber.text;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SecondScreen(
                  fullName: sentFullName,
                  phoneNumber: sentPhoneNumber,
                )));
  }
}
