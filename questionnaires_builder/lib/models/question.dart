import 'package:flutter/material.dart';

import './answer.dart';

class Question {
  final String text;
  final List<Answer> answers;
  final String questionnaire;

  const Question({
    required this.text,
    required this.answers,
    required this.questionnaire,
  });
}
