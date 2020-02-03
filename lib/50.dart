import 'package:flutter/material.dart';


void main(){
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {

  Color textColor;
  bool checkBoxValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    textColor = Colors.red;
    checkBoxValue = false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("checkbox example"),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
                    new Text("some term and conditions that you wanna read and agree to in order" +
                "some term and conditions that you wanna read and agree to in order" +
                "some term and conditions that you wanna read and agree to in order" +
                "some term and conditions that you wanna read and agree to in order" +
                "some term and conditions that you wanna read and agree to in order"
                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text("agree to our terms", style: new TextStyle(color: textColor), textAlign: TextAlign.right,),
                      
                    ),
                    new Checkbox(value: checkBoxValue, onChanged: (bool checked){
                        setState(() {
                          checkBoxValue = checked;
                          

                          if(checked == true){
                            textColor = Colors.green;
                          }else{
                            textColor = Colors.red;
                          }
                        });
                      })
                  ],
                )
            ],
          )
        ),
      ),
    );
  }
}