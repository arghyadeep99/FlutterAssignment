import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: HomePage()
    );
  }
}








class HomePage extends StatelessWidget {
  var names = ['Gaurav', 'Gaurang', 'Arghyadeep'];
  var colorStrength = [400, 600, 800];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 20.0
      ),
      itemCount: names.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.green[colorStrength[index]],
          child: Center(
            child: Text(
              names[index],
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.yellow,
              ),
            ),
          ),
          padding: EdgeInsets.all(4.0),
          margin: EdgeInsets.symmetric(
            vertical: 3.0,
            horizontal: 2.0,
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index){
        return Divider(
          color: Colors.yellow,
          height: 40.0,
          endIndent: 25.0,
          indent: 15.0,
        );
      },
    );
  }
}