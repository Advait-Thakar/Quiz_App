import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAns = [];
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchscreen);
    super.initState();
  }

  void switchscreen() {
    setState(() {
      activeScreen = Questions(
        onSelectAns: choosenAns,
      );
    });
  }

  void choosenAns(String ans) {
    selectedAns.add(ans);

    if (selectedAns.length == questions.length) {
      setState(() {
        selectedAns = [];
        activeScreen = StartScreen(switchscreen);
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 36, 38, 170),
                Color.fromARGB(255, 71, 114, 188),
                Color.fromARGB(255, 147, 206, 216)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: activeScreen,
          ),
        ),
      ),
    );
  }
}
