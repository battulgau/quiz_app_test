import 'package:flutter/material.dart';
import 'package:quiz_app_test/answer.dart';
import 'package:quiz_app_test/paginate.dart';
import 'package:quiz_app_test/question.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function questionAnswer;
  const Quiz(this.questions, this.questionIndex, this.questionAnswer,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Paginate(questionIndex, questions),
        Question(questions[questionIndex]["questionText"].toString()),
        for (Map answer in questions[questionIndex]["answer"] as List)
          Answer(() => questionAnswer(answer["score"]), answer["text"]),
      ],
    );
  }
}
