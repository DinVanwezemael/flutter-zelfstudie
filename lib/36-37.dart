import 'package:flutter/material.dart';

abstract class ListItem {}

class HeadingItem implements ListItem{
  final String heading;

  HeadingItem(this.heading);
}

class MessageItem implements ListItem{
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}

void main(){
  runApp(new MyApp(
    items: new List<ListItem>.generate(1000,
     (i) => i%6 == 0 ? new HeadingItem("Heading $i") : new MessageItem("Sender $i", "Message body $i")),
  ));
}

class MyApp extends StatelessWidget{
  final List<ListItem> items;
  MyApp({Key key, @required this.items}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final String title = "mixed list";

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title)
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            final item = items[index];
            if(item is HeadingItem){
              return new ListTile(
                title: new Text(item.heading, style: Theme.of(context).textTheme.headline,),
              );
            }else if(item is MessageItem){
              return new ListTile(
                title: new Text(item.sender),
                subtitle: new Text(item.body),
              );
            }
          },
        )
      )
    );
  }
}
