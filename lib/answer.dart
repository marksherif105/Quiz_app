import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({super.key, required this.selectHandler, required this.answerText});

  final Function selectHandler;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => selectHandler(),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: Text(answerText),
      ),
    );
  }
}
