import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(
            image: AssetImage('assets/images/quiz-logo.png'),
            width: 300,
            height: 300,
            color: Color.fromARGB(90, 255, 252, 252),
          ),
          const SizedBox(height: 20),
          Text('Lean Fitness the fun way',
              style: GoogleFonts.poppins(
                color: const Color.fromARGB(255, 197, 158, 231),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            icon: const Icon(Icons.quiz, color: Colors.white),
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: const Text("Start quiz!"),
          ),
        ],
      ),
    );
  }
}
