import 'package:flutter/material.dart';

import '../dummy_data.dart';

class QuestionnairesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Questionnaires',
        ),
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      )),
    );
  }
}
