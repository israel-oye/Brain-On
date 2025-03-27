import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  final String textContent;
  final String fontFamily;
  final double fontSize;
  final Color textColor;
  final TextAlign alignment;

  const StyledText(
    this.textContent,
    {
      super.key,
      this.fontFamily = 'sans-serif',
      this.fontSize = 16,
      this.textColor = const Color(0xFF40421F),
      this.alignment = TextAlign.center
    });

  @override
  Widget build(context) {
    return Text(
      textContent,
      style: GoogleFonts.nunito(color: textColor, fontSize: fontSize));
  
  }
}
