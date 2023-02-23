import 'package:flutter/material.dart';

class Questionnaire {
  final String id;
  final String title;
  final Color color;

  const Questionnaire(
      {required this.id, required this.title, this.color = Colors.orange});
}
