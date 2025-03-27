import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StartScreen extends StatelessWidget {
  final void  Function() startQuiz;

  const StartScreen(this.startQuiz, {super.key});

  void clickHandler() {
    startQuiz();
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              'assets/images/quiz.png',
              width: 250,
            ),
          ),
          Text(
            'Brain on? Quiz it out!',
            style: GoogleFonts.jua(
              color: Color(0xFF40421F),
              fontSize: 28,
            ),
          ),
          // StyledText(
          //   'Brain on? Quiz it out!',
          //   fontFamily: 'monospace',
          //   fontSize: 20,
          // ),
          SizedBox(height: 30,),
          OutlinedButton.icon(
            onPressed: clickHandler,
            style: OutlinedButton.styleFrom(
              foregroundColor: Color(0xFF010101),
            ),
            label: Text(
              "Start Quiz",
              style: GoogleFonts.poppins(
                color: Color(0xFF40421F),
                fontSize: 16,
                fontWeight: FontWeight.w600
                ),
            ),
            icon: const Icon(Icons.arrow_right_alt_rounded, color: Color(0xFF40421F), size: 24,),
          ),
        ],
      ),
    );
  }
}
