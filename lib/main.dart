import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Flutter App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.green,
      accentColor: Colors.lightBlueAccent,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('I am learning it'),
            Text('I am learning it again'),
            RaisedButton(
              onPressed: () {},
              child: Text('Login'),
              color: Colors.lightBlueAccent,
              splashColor: Colors.white, 
              )
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    ), 
  );
  }
}