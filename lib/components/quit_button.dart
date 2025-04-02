import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuitButton extends StatelessWidget {
  const QuitButton({
    super.key,
    required this.goHomeHandler,
  });

  final void Function() goHomeHandler;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: goHomeHandler,
      style: TextButton.styleFrom(foregroundColor: Color(0xFF40421F)),
      label: Text(
        'Restart quiz',
         style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
         ),
         icon: const Icon(Icons.replay_rounded, color: Color(0xFF40421F), size: 18,),
      );
  }
}
