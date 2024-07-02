
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {

  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.deepPurple,
            Color.fromARGB(255, 134, 33, 152),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )
      ),
      child: const Center(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('this is quiz container1'),
          Text('this is quiz container2'),
          Text('this is quiz container3'),
        ],
      )
      )
    );
  }
}