import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final void Function(int) questionIndexAdder;

  Quiz({
    required this.questions,
    required this.questionIndexAdder,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['Answers'] as List)
            .map((answer) => Answer(
                () => questionIndexAdder(answer['score']), answer['text']))
            .toList()
      ],
    );
  }
}
