import 'package:flutter/material.dart';
import './dummy_data.dart';

class QuestionnaireContent extends StatelessWidget {
  /* final String id;
  final String title;
  QuestionnaireContent(this.id, this.title); */
  static const routeName = 'QuestionnaireContent';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final id = routeArgs['id'];
    final title = routeArgs['title'];
    //--------------------------------------
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
