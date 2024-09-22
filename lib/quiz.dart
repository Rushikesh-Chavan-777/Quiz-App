import 'package:flutter/material.dart';
import 'package:thirdapp/data/questions.dart';
import 'package:thirdapp/first_function.dart';
import 'package:thirdapp/questions_screen.dart';
import 'package:thirdapp/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {


  List<String> answerstore = [];
  void choseanswer(String answer){
    answerstore.add(answer);
    if(answerstore.length == questions.length ){
      setState(() {
        activescreen = 'result-screen';
      });
      //activescreen = 'results-screen';
      //answerstore = [];
    }
  } 


  var activescreen = 'start-screen';

  void screenchange() {
    setState(() {
      activescreen = 'end-screen';
    });
  }

  @override
  Widget build(context) {
    //widget.screensaver();
    var screensaver = activescreen;
    Widget? opra;
    if (screensaver == 'start-screen') {
      opra = StartScreen(screenchange);
    } 
    if (screensaver == 'result-screen'){
      opra = ResultsScreen(storage: answerstore);
    }
    if(screensaver == 'end-screen'){
      opra = QuestionsScreen(onselect: choseanswer);
    }

    return MaterialApp(
      home: Scaffold(
        body: opra,
        backgroundColor: Colors.purple,
      ),
    );
  }
}
