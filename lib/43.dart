import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


void main(){
  runApp(new MyApp());
}

class ToDo {
  final String title;
  final String description;

  ToDo(this.title, this.description);
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
    title: "passing data to details screen",
    home: new ToDoScreen(
      todos: new List.generate(100, (i) => new ToDo("Todo $i", "this is the disription of todo$i"))
    ),
  );
  }
}

class ToDoScreen extends StatelessWidget{

  final List<ToDo> todos;

  ToDoScreen({Key key, this.todos}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Todos"),
      ),
      body: new ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index){
          return new ListTile(
            title: new Text(todos[index].title),
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(
                builder: (context) => new DetailScreen(todo: todos[index])
              ));
            },
          );
        },
      )
    );
  }
}

class DetailScreen extends StatelessWidget {

  final ToDo todo;

  DetailScreen({Key key, this.todo}) : super(key:key);

  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("details of ${todo.title}"),
      ),
      body: new Padding(
        padding: new EdgeInsets.all(16.0),
        child: new Center(
          child: new Text("${todo.description}"),
        ),
      )
    );
  }
}
