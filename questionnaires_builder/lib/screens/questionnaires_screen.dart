import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgest/questionnaire_item.dart';
import 'user/user_questionnaire.dart';

class QuestionnairesScreen extends StatelessWidget {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Questionnaires',
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('CHART!'),
              elevation: 5,
            ),
          ),
          SingleChildScrollView(
            child: UserQuestionnaire(),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(25),
            itemCount: DUMMY_CATEGORIES.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (ctx, index) {
              final catData = DUMMY_CATEGORIES[index];
              return QuestionnaireItem(
                  catData.id, catData.title, catData.color);
            },
          ),
        ],
      ),
    );
  }
}


/* import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgest/questionnaire_item.dart';
import 'user/user_questionnaire.dart';

//import 'user/user_new_questionnaire.dart';

class QuestionnairesScreen extends StatelessWidget {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  Widget _buildChartSection() {
    return Container(
      width: double.infinity,
      child: Card(
        color: Colors.blue,
        child: Text('CHART!'),
        elevation: 5,
      ),
    );
  }

  Widget _buildUserQuestionnaireSection() {
    return SingleChildScrollView(
      child: UserQuestionnaire(),
    );
  }

/*   Widget _buildGridViewSection() {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        itemCount: DUMMY_CATEGORIES.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (ctx, index) {
          final catData = DUMMY_CATEGORIES[index];
          return QuestionnaireItem(catData.id, catData.title, catData.color);
        },
      ),
    );
  } */
  Widget _buildGridViewSection() {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.all(25),
        itemCount: DUMMY_CATEGORIES.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (ctx, index) {
          final catData = DUMMY_CATEGORIES[index];
          return QuestionnaireItem(catData.id, catData.title, catData.color);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Questionnaires',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildChartSection(),
          _buildUserQuestionnaireSection(),
          _buildGridViewSection(),
        ],
      ),
    );
  }
} */
