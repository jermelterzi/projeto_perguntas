import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    Key? key,
    required this.questions,
    required this.questionSelect,
    required this.reply,
  }) : super(key: key);

  final List<Map<String, Object>> questions;
  final int questionSelect;
  final Function(int) reply;

  bool get hasQuestion {
    return questionSelect < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers =
    hasQuestion ? questions[questionSelect].cast()['answers'] : [];

    return Column(
      children: [
        Question(questions[questionSelect]['text'].toString()),
        ...answers
            .map((ans) {
          return Answer(
            ans['text'].toString(),
                () => reply(int.parse(ans['points'].toString())),
          );
        })
            .toList(),
      ],
    );
  }
}
