import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void questionIndexAdder(int score) {
    totalScore += score;

    setState(() {
      questionIndex++;
    });
  }

  List questions = [
    {
      'questionText': 'What is your favorite color?',
      'Answers': [
        {'text': 'black', 'score': 10},
        {'text': 'white', 'score': 1},
        {'text': 'blue', 'score': 3},
        {'text': 'red', 'score': 5},
      ]
    },
    {
      'questionText': 'What is your favorite animal?',
      'Answers': [
        {'text': 'rabbit', 'score': 3},
        {'text': 'snake', 'score': 11},
        {'text': 'lion', 'score': 9},
        {'text': 'elephant', 'score': 5},
      ]
    },
    {
      'questionText': 'Who is your favorite instructor?',
      'Answers': [
        {'text': 'max', 'score': 1},
        {'text': 'max', 'score': 1},
        {'text': 'max', 'score': 1},
        {'text': 'max', 'score': 1},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
        centerTitle: true,
      ),
      body: questionIndex < questions.length
          ? Quiz(
              questions: questions,
              questionIndexAdder: questionIndexAdder,
              questionIndex: questionIndex,
            )
          : Result(totalScore, resetQuiz),
    );
  }
}
