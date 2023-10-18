import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Test extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback chooseAnswer;

  Test({
    required this.questions,
    required this.questionIndex,
    required this.chooseAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answerText']! as List).map((ans) {
          return Answer(ans, chooseAnswer);
        }).toList(),
      ],
    );
  }
}
