import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAns, required this.restartQuiz});

  final List<String> chosenAns;
  final Function restartQuiz;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAns.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAns[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('You Got X out of Y Questions CORRECT!'),
          const SizedBox(
            height: 40,
          ),
          QuestionSummary(summaryData: getSummary()),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              restartQuiz();
            },
            child: const Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
