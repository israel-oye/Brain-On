import 'package:flutter/material.dart';

import 'package:quiz_app/data/questions.dart';

import 'package:quiz_app/screens/question_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';
import 'package:quiz_app/screens/result_screen.dart';


var beginAlignment = Alignment.centerLeft;
var endAlignment = Alignment.centerRight;



class Quiz extends StatefulWidget {

  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }

}


class _QuizState extends State<Quiz>{
  
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];


  void switchScreen(){
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  void saveAnswer(String answer){
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState((){
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz(){
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(context){
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'quiz-screen'){
      screenWidget = QuestionScreen(onSelectAnswer: saveAnswer, onQuit: restartQuiz,);
    } else if(activeScreen == 'result-screen'){
      screenWidget = ResultScreen(chosenAnswers: selectedAnswers, goHomeHandler: restartQuiz,);
    }

    return MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [
            Color(0xFFFEF4C3),
            Color(0xFFDEBD9B),
          ],
          begin: beginAlignment,
          end: endAlignment
          ),
        ),
        child: screenWidget,
      ),
    ),
  );
  }
}