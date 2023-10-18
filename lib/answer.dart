import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback functionHandler;
  final String answerText;

  Answer(this.answerText, this.functionHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: functionHandler,
      ),
    );
  }
}
