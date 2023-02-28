/* import 'package:flutter/material.dart';

class QuestionnaireContentScreen extends StatelessWidget {
  static const routeName = '/questionnaire-content';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final id = routeArgs['id'];
    final title = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(id),
      ),
    );
  }
}
 */

import 'package:flutter/material.dart';

import '../dummy_data.dart';

class QuestionnaireContentScreen extends StatefulWidget {
  static const routeName = '/questionnaire-content';

  @override
  _QuestionnaireContentScreenState createState() =>
      _QuestionnaireContentScreenState();
}

class _QuestionnaireContentScreenState
    extends State<QuestionnaireContentScreen> {
  Map<String, int> _scores = {};

  void _handleAnswerSelected(String questionId, int score) {
    setState(() {
      _scores[questionId] = score;
    });
  }

  void _submitAnswers() {
    // TODO: Implement logic to submit answers
    print(_scores);
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final questionnaireId = routeArgs['id'];
    final questionnaireTitle = routeArgs['title'];
    final questions =
        DUMMY_QUESTION.where((q) => q.questionnaire == questionnaireId);

    return Scaffold(
      appBar: AppBar(
        title: Text(questionnaireTitle),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: questions.length,
              itemBuilder: (ctx, index) {
                final question = questions.elementAt(index);
                final selectedScore = _scores[question.id];

                return Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          question.text,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        SizedBox(height: 16),
                        Column(
                          children: question.answers.map((answer) {
                            final isSelected = answer.score == selectedScore;

                            return RadioListTile(
                              title: Text(answer.text),
                              value: answer.score,
                              groupValue: selectedScore,
                              onChanged: (score) =>
                                  _handleAnswerSelected(question.id, score!),
                              activeColor: Colors.blue,
                              controlAffinity: ListTileControlAffinity.trailing,
                              selected: isSelected,
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: _submitAnswers,
            child: Text('Submit Answers'),
          ),
        ],
      ),
    );
  }
}
