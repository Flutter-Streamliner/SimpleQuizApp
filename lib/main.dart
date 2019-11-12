import 'package:flutter/material.dart';

import 'package:simple_quiz_app/question.dart';
import 'package:simple_quiz_app/answer.dart';
import 'package:simple_quiz_app/quiz.dart';
import 'package:simple_quiz_app/result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

  final _questions = const [
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
    //if (_questionIndex < _questions.length)
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
        body: _questionIndex < _questions.length ? 
          Quiz(_answerCallback, _questions, _questionIndex) : 
          Result(),
      ),
    );
  }
}
