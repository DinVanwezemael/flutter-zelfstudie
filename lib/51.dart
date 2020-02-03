import 'package:flutter/material.dart';


void main(){
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String homeAddress = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    homeAddress = "";
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("textfield example"),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              new Icon(Icons.home, size: 64.0, color: Colors.blue),
              new TextField(
                onChanged: (String newValue){
                  setState(() {
                    homeAddress = newValue;
                  }); 
                },
                decoration: new InputDecoration(
                  hintText: "enter your home address here",
                  labelText: "Home address"
                ),
              ),
              new Text(homeAddress),
            ],
          ),
        ),
      ),
    );
  }
}