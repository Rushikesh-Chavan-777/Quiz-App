import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startquiz, {super.key});
  final void Function() startquiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 40),
          Text(
            'Welcome to the flutter quiz',
            style: GoogleFonts.lato(
              color: Colors.white),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startquiz,
            icon: const Icon(Icons.arrow_circle_right_outlined),
            label: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
