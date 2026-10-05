import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    super.key,
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            selectHandler: () => answerQuestion(answer['score']),
            answerText: answer['text'].toString(),
          );
        }),
      ],
    );
  }
}
