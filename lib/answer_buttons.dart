import 'package:flutter/material.dart';

// ignore: camel_case_types
class answerbutton extends StatelessWidget {
  const answerbutton(
      {super.key, required this.answerText, required this.onTap});

  final String answerText;
  final Function onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey.shade400,
      ),
      onPressed: () {
        onTap();
      },
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
