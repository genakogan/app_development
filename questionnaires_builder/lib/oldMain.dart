import 'package:flutter/material.dart';
import 'old/screens/meal_detail_screen.dart';
import 'old/screens/questionnaire_content_screen.dart';
import 'old/screens/questionnaires_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        canvasColor: Color.fromRGBO(15, 113, 41, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(156, 175, 175, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            subtitle1: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey)
            .copyWith(secondary: Colors.amber),
      ),
      //home: QuestionnairesScreen(),
      initialRoute: '/',
      routes: {
        '/': ((ctx) => QuestionnairesScreen()),
        QuestionnaireContentScreen.routeName: ((ctx) =>
            QuestionnaireContentScreen()),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questinnaires'),
      ),
      body: Center(
        child: Text('Navigation Time!'),
      ),
    );
  }
}

/* import './old/result.dart';

import './old/quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
} */

/* import 'package:flutter/material.dart';

import 'models/answer.dart';
import 'models/question.dart';
import 'models/questionnaire.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Questionnaire Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questionnaire Demo'),
        ),
        body: Questionnaire(
          questions: [
            Question(
              text: 'What is your favorite color?',
              answers: [
                Answer(text: 'Red', score: 10),
                Answer(text: 'Blue', score: 5),
                Answer(text: 'Green', score: 2),
              ],
            ),
            Question(
              text: 'What is your favorite animal?',
              answers: [
                Answer(text: 'Dog', score: 10),
                Answer(text: 'Cat', score: 5),
                Answer(text: 'Bird', score: 2),
              ],
            ),
            Question(
              text: 'What is your favorite food?',
              answers: [
                Answer(text: 'Pizza', score: 10),
                Answer(text: 'Burgers', score: 5),
                Answer(text: 'Tacos', score: 2),
              ],
            ),
          ],
          onSubmit: () {
            // TODO: Calculate and display the total score
            print('Questionnaire submitted!');
          },
        ),
      ),
    );
  }
}
 */