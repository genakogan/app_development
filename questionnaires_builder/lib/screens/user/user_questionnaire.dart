import 'package:flutter/material.dart';
import 'package:questionnaires_builder/old/models/questionnaire.dart';

import 'user_new_questionnaire.dart';
import 'user_questionnaire_content_screen.dart';

//import './new_transaction.dart';
//import './transaction_list.dart';
//import '../models/transaction.dart';

class UserQuestionnaire extends StatefulWidget {
  @override
  _UserQuestionnaire createState() => _UserQuestionnaire();
}

class _UserQuestionnaire extends State<UserQuestionnaire> {
  final List<Questionnaire> _userQuestionnaire = [
    Questionnaire(
      id: 'Test1',
      title: 'Test1',
      color: Color.fromARGB(255, 39, 176, 46),
    ),
    Questionnaire(
      id: 'Test2',
      title: 'Test2',
      color: Color.fromARGB(255, 80, 39, 176),
    ),
  ];

  void _addNewQuestionnaire(String txTitle, String txAmount) {
    final newTx = Questionnaire(
      id: txTitle,
      title: txAmount,
      color: Color.fromARGB(255, 80, 39, 176),
      //id: DateTime.now().toString(),
    );

    setState(() {
      _userQuestionnaire.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UserNewQuestionnaire(_addNewQuestionnaire),
        UserQuestionnaireContentScreen(_userQuestionnaire),
      ],
    );
  }
}
