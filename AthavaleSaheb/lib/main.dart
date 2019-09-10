import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyStatelessWidget()
  ));
}

class MyStatelessWidget extends StatelessWidget {
  final topLayer=new Container(
        //adding padding around card
        padding: new EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            new MyCard(
              title: new Text("I love Sleeping", style: new TextStyle(fontSize: 20.0)),
              icon: new Icon(Icons.favorite, size: 40.0, color: Colors.redAccent)
            ),
            new MyCard(
              title: new Text("I love Linkin Park", style: new TextStyle(fontSize: 20.0)),
              icon: new Icon(Icons.audiotrack, size: 40.0, color: Colors.black)
            ),
            new MyCard(
              title: new Text("Show Password", style: new TextStyle(fontSize: 20.0)),
              icon: new Icon(Icons.visibility, size: 40.0, color: Colors.blue)
            ),
        ]
        ),        
      );
  final bottomLayer=new Container(
    padding: new EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 30),
        RaisedButton(
          onPressed: () {},
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              'Request Gaurang-cha Visarjan at Rs 99',
              style: TextStyle(fontSize: 20)
            ),
          ),
        ),
        ]
        ),      );
  @override
  Widget build(BuildContext context){
    //Scaffold provide functionality of appbar, body of app etc.
    return new Scaffold(
      appBar: new AppBar(title: new Text("Bhagwan ki Kripa")),
      body:new Container(
      child: new Column(
        children: <Widget>[
          topLayer,
          bottomLayer
        ],
      ),
    ),
  );
  }
}

class MyCard extends StatelessWidget {
  //adding constructor
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context){
    return new Container(
      //adding bottom padding on card
      padding: new EdgeInsets.only(bottom: 20.0),
      child: new Card(
        child: new Container(
          //adding padding inside card
          padding: new EdgeInsets.all(15.0),
          child: new Column(
          children: <Widget>[

              this.title,
              this.icon
            ]
          )
        )
        
      )
    );
  }
}
