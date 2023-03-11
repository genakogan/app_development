import 'package:flutter/material.dart';

class UserNewQuestionnaire extends StatelessWidget {
  late final Function addTx;
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  UserNewQuestionnaire(this.addTx);
  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = descriptionController.text;
    if (enteredTitle.isEmpty || enteredAmount.isEmpty) {
      return;
    }

    addTx(
      enteredTitle,
      enteredAmount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              //onChanged: (val) => titleInput = val,
              controller: titleController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Description'),
              //onChanged: (val) => descriptionInput = val,
              controller: descriptionController,
              onSubmitted: (_) => submitData(),
            ),
            TextButton(
              child: Text('Add Transaction'),
              onPressed: submitData,
            ),
          ],
        ),
      ),
    );
  }
}


/* class UserNewQuestionnaire extends StatefulWidget {
  final Function addQuestionnaire;

  UserNewQuestionnaire(this.addQuestionnaire);

  @override
  _UserNewQuestionnaireState createState() => _UserNewQuestionnaireState();
}

class _UserNewQuestionnaireState extends State<UserNewQuestionnaire> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  void _submitData() {
    final enteredTitle = _titleController.text;
    final enteredAmount = _amountController.text;

    if (enteredTitle.isEmpty || enteredAmount.isEmpty) {
      return;
    }

    widget.addQuestionnaire(
      enteredTitle,
      enteredAmount,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: _titleController,
            onSubmitted: (_) => _submitData(),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            controller: _amountController,
            keyboardType: TextInputType.number,
            onSubmitted: (_) => _submitData(),
          ),
          TextButton(
            child: Text('Add Transaction'),
            onPressed: _submitData,
          ),
        ],
      ),
    );
  }
} */
