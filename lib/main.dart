import 'package:flutter/material.dart';

import 'package:simple_quiz_app/question.dart';
import 'package:simple_quiz_app/answer.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

  var _questions = [
    {'questionText' : 'What\'s your name?',
    'answers' : ['David', 'Pablo', 'Martin']
    }, 
    {'questionText' : 'How do you do?',
    'answers' : ['good', 'fine', 'ok']
    }, 
    {'questionText' : 'What\'s your favourite color?',
    'answers' : ['black', 'white', 'red']
    }, 
  ];

  var _questionIndex = 0;

  void _answerCallback() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(_questions[_questionIndex]['questionText']),
            ...(_questions[_questionIndex]['answers'] as List<String>).map((answer){
              return Answer(_answerCallback, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
