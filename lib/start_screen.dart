import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
          const Text('Lean Flutter the fun way',
              style: TextStyle(fontSize: 24, color: Colors.white)),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            icon: const Icon(Icons.quiz, color: Colors.white),
            onPressed: () {
            },
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
