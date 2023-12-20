import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StartScreen extends StatelessWidget {
  StartScreen(void Function() this.quizStart, {super.key});

  final Function quizStart;

  var imgAsset = 'assets/images/logo.png';
  var bodyText = 'Learn Flutter The Fun Way!';
  var eleText = 'Start Quiz';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          imgAsset,
          height: 250,
          width: 250,
          color: const Color.fromARGB(155, 250, 250, 250),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          bodyText,
          style: const TextStyle(
            fontSize: 30,
            fontFamily: 'Roboto',
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton.icon(
          onPressed: () {
            quizStart();
          },
          icon: const Icon(Icons.arrow_right),
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.grey.shade400),
          label: Text(
            eleText,
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Roboto',
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
