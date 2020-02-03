import 'package:flutter/material.dart';


void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
    title: "Navigation basics",
    home: new FirstScreen(),
  );
  }
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("First screen"),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text("Launch new screen"),
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(
              builder: (context) => new SecondScreen()
            ));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("second screen"),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text("Go back"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
