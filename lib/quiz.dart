import 'package:flutter/material.dart';
import 'package:simple_quiz_app/answer.dart';
import 'package:simple_quiz_app/question.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final Function answerCallback;
  final int questionIndex;

  Quiz(this.answerCallback, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Question(questions[questionIndex]['questionText']),
            ...(questions[questionIndex]['answers'] as List<String>).map((answer){
              return Answer(answerCallback, answer);
            }).toList(),
          ],
        );
  }
}