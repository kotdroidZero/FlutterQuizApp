import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectAnswer;
  final Object answerText;

  Answer(this.selectAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: selectAnswer,
        color: Colors.blue,
      ),
    );
  }
}
