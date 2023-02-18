import 'package:flutter/material.dart';
import 'package:questionnaires_app/questionnaire_content.dart';

class QuestionnaireItem extends StatelessWidget {
  final String title;
  final Color color;

  QuestionnaireItem(this.title, this.color);

  void selectQuestionnaire(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return QuestionnaireContent();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectQuestionnaire(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(33),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(33),
        ),
      ),
    );
  }
}
