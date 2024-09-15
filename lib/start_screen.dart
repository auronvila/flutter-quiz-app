import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'gradient_background.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Learn Flutter the fun way",
            style: GoogleFonts.lato(color: Colors.white, fontSize: 23),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: switchScreen,
            label: const Text(
              "Start",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
