import 'package:flutter/material.dart';

class Paginate extends StatelessWidget {
  final int questionIndex;
  final List questions;
  const Paginate(this.questionIndex, this.questions, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 15, top: 15),
      width: double.infinity,
      child: Text(
        "Асуулт ${questionIndex + 1}/${questions.length}",
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        textAlign: TextAlign.right,
      ),
    );
  }
}
