import 'package:flutter/material.dart';

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

  void chooseAnswer() {
    questionIndex++;
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
            const Text('The Question'),
            ElevatedButton(
                onPressed: chooseAnswer, child: const Text('Answer 1')),
            ElevatedButton(
                onPressed: chooseAnswer, child: const Text('Answer 2')),
          ],
        ),
      ),
      debugShowCheckedModeBanner: true,
    );
  }
}
