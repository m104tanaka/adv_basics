import 'package:adv_basics/data/questions_answers.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choseAnswers});

  final List<String> choseAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < choseAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': choseAnswers[i],
        }
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You answerd X out of Y questions correctly!',
            ),
            const SizedBox(height: 20),
            const Text(
              'List of asnwers:'
            ),
            const SizedBox(height: 20),
            OutlinedButton.icon(
            icon: const Icon(Icons.restart_alt, color: Colors.white),
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: const Text('Restart quiz!'),
          ),
          ],
        ),
        )
    );
  }
}