import 'package:flutter/material.dart';
import 'package:quiz_app/answer_buttons.dart';
import 'package:quiz_app/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;

  void changeIndex() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentquestion = questions[currentQuestionIndex];

    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentquestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentquestion.getshuffledAnswers().map((ans) {
            return answerbutton(answerText: ans, onTap: changeIndex);
          }),
        ],
      ),
    );
  }
}
