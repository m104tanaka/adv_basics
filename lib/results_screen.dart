import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});


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