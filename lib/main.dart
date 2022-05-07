import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  var questionIndex = 0;

  void changeTheText(int i){
    setState(() {
      questionIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favourate color?',
      'What\'s your favourate animal?',
      'What\'s your name?'
    ];
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('This is my first app'),
          ),
          body: Column(
            children: <Widget>[
              Text(question.elementAt(questionIndex)),
              ElevatedButton(
                child: Text('Question 1'),
                onPressed: (){
                  changeTheText(0);
                },
              ),
              ElevatedButton(
                child: Text('Question 2'),
                onPressed: (){
                  changeTheText(1);
                },
              ),
              ElevatedButton(
                child: Text('Question 3'),
                onPressed: (){
                  changeTheText(2);
                },
              ),
            ],
          ),
      ),
    );
  }
}
