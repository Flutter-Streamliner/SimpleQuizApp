import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  
  final String questingText;

  Question(this.questingText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questingText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,  
      ),
    );
  }
}