import 'package:flutter/material.dart';

void main() => runApp(MyApp(
  TextInput: new Text("hallo van de main"),
));

class MyApp extends StatefulWidget{
  final Widget TextInput;
  MyApp({this.TextInput});
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp>{
    bool checkboxValue = false;
    String actionText = "Default text";

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "mijnApp",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("hallo flutter"),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.add),
              onPressed: (){
                setState(() {
                  actionText = "New Text";
                });
              },
            ),
            new IconButton(
              icon: new Icon(Icons.remove),
              onPressed: (){
                setState(() {
                  actionText = "Default text";
                });
              },
            )
          ],
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              widget.TextInput,
              new Text(actionText),
              new Checkbox(
                value: checkboxValue,
                onChanged: (bool newValue){
                  setState(() {
                    checkboxValue = newValue;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
  }
