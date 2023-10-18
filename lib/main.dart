import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var questionIndex = 0;
  // var questions = [
  //   'When you go somewhere for the day, would you rather',
  //   'If you were a teacher, would you rather teach',
  //   'Are you usually',
  //   'Do you more often let',
  // ];
  var questions = [
    {
      'questionText': '1. When you go somewhere for the day, would you rather',
      'answerText': ['Plan what you will do and when', 'Just go!'],
    },
    {
      'questionText': '2. If you were a teacher, would you rather teach',
      'answerText': [
        'Facts-based courses',
        'Courses involving opinion or theory'
      ],
    },
    {
      'questionText': '3. Are you usually',
      'answerText': [
        'A "good mixer" with groups of people',
        'Rather quiet and reserved'
      ],
    },
    {
      'questionText': '4. Do you more often let',
      'answerText': ['Your heart rule your head', 'Your head rule your heart'],
    },
  ];

  void chooseAnswer() {
    setState(() {
      questionIndex++;
      if (questionIndex >= questions.length) {
        questionIndex = 0;
      }
    });
    // questionIndex++;
    print('QuestionIndex: $questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Center(child: Text("Myers-Briggs Type Indicator"))),
        body: Column(
          children: [
            Question(questions[questionIndex]['questionText'] as String),
            // ...(questions[questionIndex]['answerText']! as List).map((ans) {
            //   return Answer(ans, chooseAnswer);
            // }).toList(),
            for (var ans in questions[questionIndex]['answerText']! as List)
              Answer(ans, chooseAnswer),
          ],
        ),
      ),
      debugShowCheckedModeBanner: true,
    );
  }
}
