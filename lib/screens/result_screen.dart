import 'package:flutter/material.dart';

import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/components/question_summary/questions_summary.dart';
import 'package:quiz_app/components/quit_button.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers, required this.goHomeHandler});

  final List<String> chosenAnswers;
  final void Function() goHomeHandler;

  List<Map<String, Object>> getSummary(){
    final List<Map<String, Object>> summary = [];
    
  for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummary();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data){
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // StyledText('Results of Quiz', fontSize: 24,),
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF40421F)
              ),
            ),
            SizedBox(height: 30,),
            // StyledText(
            //   'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly',
            //   fontSize: 20,
            //   textColor: Color(0xFF000010),
            //   ),
            SizedBox(height: 30,),
            QuestionsSummary(summaryData: summaryData),
            QuitButton(goHomeHandler: goHomeHandler)
          ],
        ),
      ),
    );
  }
}
