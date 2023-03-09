import './question.dart';

class Questionnaire {
  final String id;
  final String title;
  final String description;
  final List<Question> questions;
  final void Function() onSubmit;

  const Questionnaire({
    required this.id,
    required this.title,
    required this.description,
    required this.questions,
    required this.onSubmit,
  });
}
 




/* import 'answer.dart';

class Questionnaire extends StatefulWidget {
  final List<Question> questions;
  final void Function() onSubmit;

  Questionnaire({required this.questions, required this.onSubmit});

  @override
  _QuestionnaireState createState() => _QuestionnaireState();
}

class _QuestionnaireState extends State<Questionnaire> {
  List<Answer> _selectedAnswers = [];

  void _onAnswerSelected(Answer answer) {
    setState(() {
      // Remove any previously selected answers for the same question
      _selectedAnswers.removeWhere((a) => a.text == answer.text);

      // Add the selected answer to the list
      _selectedAnswers.add(answer);
    });
  }

  bool _isAnswerSelected(Answer answer) {
    return _selectedAnswers.contains(answer);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final question in widget.questions)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                question.text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              for (final answer in question.answers)
                Row(
                  children: [
                    Checkbox(
                      value: _isAnswerSelected(answer),
                      onChanged: (value) {
                        _onAnswerSelected(answer);
                      },
                    ),
                    Text(answer.text),
                  ],
                ),
              SizedBox(height: 20),
            ],
          ),
        ElevatedButton(
          onPressed: _selectedAnswers.length == widget.questions.length
              ? widget.onSubmit
              : null,
          child: Text('Submit'),
        ),
      ],
    );
  }
}
 */