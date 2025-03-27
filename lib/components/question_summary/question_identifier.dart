import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget{
  const QuestionIdentifier({
    super.key,
    required this.questionIndex,
    this.isCorrectAnswer=true
    });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(context){
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
          ? const Color(0xFFECE872)
          : const Color(0xFFFB74A6),
          borderRadius: BorderRadius.circular(100)
      ),
      child: Text(
        questionNumber.toString(),
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Color(0xFF001000)
        ),
      ),
    );
  }
}