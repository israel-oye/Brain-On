import 'package:flutter/material.dart';
import 'package:quiz_app/components/question_summary/question_identifier.dart';

import 'package:quiz_app/components/styled_text.dart';

class SummaryItem extends StatelessWidget{
  const SummaryItem({super.key, required this.data});

  final Map<String, Object> data;

  @override
  Widget build(context){
    final bool isCorrect = data['user_answer'] == data['correct_answer'];
    return Row(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QuestionIdentifier(
                questionIndex: data['question_index'] as int,
                isCorrectAnswer: isCorrect
                ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StyledText(data['question'] as String, fontSize: 18, textColor: Color(0xFF0A0A0A),),
                    SizedBox(height: 5),
                    StyledText(data['user_answer'] as String, fontSize: 16, textColor: Color(0xFF50021E),),
                    StyledText(data['correct_answer'] as String, fontSize: 16, textColor: Color(0xFF547C13),),
                    SizedBox(height: 15,)
                  ],
                ),
              ),
            ],
          );
  }
}