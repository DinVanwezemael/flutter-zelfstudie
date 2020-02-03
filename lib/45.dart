import 'package:flutter/material.dart';


void main(){
  runApp(new MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
    title: "Hero demo",
    home: new MainScreen(),
  );
  }
}

class MainScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Main screen"),
      ),
      body: new GestureDetector(
        child: new Hero(
          tag: "imageHero",
          child: new Image.network("https://images.unsplash.com/photo-1516488603192-3424e7ecd3bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"),
        ),
        onTap: (){
          Navigator.push(context, new MaterialPageRoute( 
            builder: (_){
              return new DetailScreen();
            }
          ));
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {


  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new GestureDetector(
        child: new Hero(
          tag: "imageHero",
          child: new Image.network("https://images.unsplash.com/photo-1516488603192-3424e7ecd3bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"),
        ),
        onTap: (){
          Navigator.pop(context);
        },
      ),
    );
  }

    _navigateAndDisplaySelection(BuildContext context) async{
      final result = await Navigator.push(context, new MaterialPageRoute(
          builder: (context) => new SelectionScreen()
      ));

      Scaffold.of(context).showSnackBar(new SnackBar(content: new Text("$result")));
    }
}


class SelectionScreen extends StatelessWidget{
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("pick an option"),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new RaisedButton(
                onPressed: (){
                  Navigator.pop(context, "yep");
                },
                child: new Text("Yep"),
              ),
            ),

            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new RaisedButton(
                onPressed: (){
                  Navigator.pop(context, "Nope");
                },
                child: new Text("Nope"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}