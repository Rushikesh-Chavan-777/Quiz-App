import 'package:flutter/material.dart';
import 'package:thirdapp/answer_button.dart';
import 'package:thirdapp/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({required this.onselect,super.key});
  final void Function(String answer) onselect;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  
  

  var count = 0;
  void answerQuestion(String selectedanswer) {
    widget.onselect(selectedanswer);
    setState(() {
      count = count + 1;

    });
  }

  //final answerquestion = questions[count];
  @override
  Widget build(context) {
    final answerquestion = questions[count];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        //padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              answerquestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...answerquestion.getshuffledanswers().map((answer) {
              return AnswerButton(answerText: answer, onTap: () {
                answerQuestion(answer);
              });
            }),
          ],
        ),
      ),
    );
  }
}
