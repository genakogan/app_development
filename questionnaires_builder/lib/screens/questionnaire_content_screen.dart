import 'package:flutter/material.dart';
import 'package:questionnaires_app/widgest/meal_item.dart';
import '../dummy_data.dart';

class QuestionnaireContentScreen extends StatelessWidget {
  /* final String id;
  final String title;
  QuestionnaireContent(this.id, this.title); */
  static const routeName = '/questionnaire-content';
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
          //return Text(categoryMeals[index].title);
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
