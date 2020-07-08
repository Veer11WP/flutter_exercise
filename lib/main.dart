import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyButton(),
  )
  );
}

class MyButton extends StatefulWidget{
  @override
  MyButtonState createState(){
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton>{
  int counter = 0;
  List<String> spanishNumbers = [
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "dietz"
  ];

  List<String> englishNumbers = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10"
  ];

  String defaultText = "Spanish numbers";
  String englishText =  "English numbers";
  void displaySNumbers(){
    setState((){
      defaultText = spanishNumbers[counter];
      englishText = englishNumbers[counter];
      if (counter < 9) {
        counter = counter + 1 ;
      } else{
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful example'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(defaultText, style: TextStyle(fontSize: 30.0)),
              Text(englishText, style: TextStyle(fontSize: 30.0, color: Colors.blue)),
              Padding(padding: EdgeInsets.all(10.0),),
              /*RaisedButton(
                child: Text('Call Numbers'),
                onPressed: displaySNumbers,
                color: Colors.orange,
              )*/
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
      onPressed: displaySNumbers,
      label: Text('Call Numbers'),
      //icon: Icon(Icons.thumb_up),
      backgroundColor: Colors.orange,
    ),
    );
  }
}