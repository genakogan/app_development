import 'package:flutter/material.dart';
import '../screens/questionnaire_content_screen.dart';

class QuestionnaireItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  QuestionnaireItem(this.id, this.title, this.color);

  void selectQuestionnaire(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(QuestionnaireContentScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectQuestionnaire(context),
      splashColor: Theme.of(context).primaryColor,
      //borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: const EdgeInsets.all(33),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.4),
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
