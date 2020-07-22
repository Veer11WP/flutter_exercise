import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'BG Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Background'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.pink,
    Colors.orange
  ];
  var currentColor = Colors.white;
  
  setRandomColor(){
    var rnd = Random().nextInt(colors.length);
    setState((){
      currentColor = colors[rnd];
    });
  }

  @override
  Widget build(BuildContext context) {
    var btnbgcrandom = Random().nextInt(colors.length);
    return Container(
      color: currentColor,
      child: Center(
        child: RaisedButton(
          color: colors[btnbgcrandom],
          padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
          child: Text("Change it!",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: setRandomColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
      ),
    );
  }
}