import 'package:flutter/material.dart';
import 'package:quiz_app/index_avatar.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Index_Avatar(
                    text: ((data['question_index'] as int) + 1).toString(),
                    isTrue: data['correct_answer'] == data['user_answer'],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (data['question']).toString(),
                          style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          (data['correct_answer']).toString(),
                          style: TextStyle(
                              color: Colors.blue.shade300,
                              fontSize: 12,
                              fontFamily: 'Roboto'),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          (data['user_answer']).toString(),
                          style: TextStyle(
                              color:
                                  data['user_answer'] == data['correct_answer']
                                      ? Colors.blue.shade300
                                      : Colors.pink.shade300,
                              fontSize: 12,
                              fontFamily: 'Roboto'),
                        ),
                        const SizedBox(
                          height: 5,
                        )
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
