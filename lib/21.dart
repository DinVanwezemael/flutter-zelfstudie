import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final wordPair = new WordPair.random();

    return new MaterialApp(
      title: "Welkom bij flutter",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("welcom bij flutter"),
        ),
      body: new Center(
        //child: new Text("hallo flutter"),
        child: new RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}