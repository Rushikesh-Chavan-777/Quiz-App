import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:thirdapp/data/questions.dart';
import 'package:thirdapp/questions_summary.dart';


class ResultsScreen extends StatelessWidget {
   const ResultsScreen({super.key, required this.storage});
   final List<String> storage;
  

  List<Map<String,Object>> getsummarydata(){
    List<Map<String,Object>> storer = [];
    for(int i = 0; i<storage.length; i++){
      storer.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': storage[i],
      });
    }
    return storer;
  }

  @override
  Widget build(context) {
    final summaryData = getsummarydata();
    final numtotalquestions = questions.length;
    final numcorrectquestions  = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;




    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('You have answered $numcorrectquestions out of $numtotalquestions questions correctly:'),
          const SizedBox(height: 40),
          QuestionsSummary(getsummarydata()),
          TextButton(
            onPressed: () {},
            child: const Text('Start new quiz'),
          ),
        ],
      ),
    );
  }
}




















