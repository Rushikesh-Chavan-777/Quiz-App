import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.answerText,required this.onTap , super.key});
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor:const Color.fromARGB(255, 83, 1, 101),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
