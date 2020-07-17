import 'package:flutter/material.dart';
import 'package:flutter2dot0/answer.dart';
import 'package:flutter2dot0/question.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(this.answerQuestion, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Question(questions[questionIndex]["questions"]),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(
                () => answerQuestion(answer['score']), answer['text']);
          }).toList()
        ],
      ),
    );
  }
}
