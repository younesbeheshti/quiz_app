import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() resetHandler;

  Result(this.score, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (score <= 8) {
      resultText = 'You are Awesome and innocent!';
    } else if (score <= 12) {
      resultText = 'Pretty likeable!';
    } else if (score <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: resetHandler,
            child: Text('Restart QuizApp'),
          )
        ],
      ),
    );
  }
}
