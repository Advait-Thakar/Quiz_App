import 'package:flutter/material.dart';

class Index_Avatar extends StatelessWidget {
  const Index_Avatar({super.key, required this.text, required this.isTrue});

  final String text;
  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    Color bgColor;

    if (isTrue) {
      bgColor = Colors.blue.shade200;
    } else {
      bgColor = Colors.pink.shade200;
    }

    return CircleAvatar(
      radius: 12,
      backgroundColor: bgColor,
      child: Text(text),
    );
  }
}
