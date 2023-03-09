import 'package:flutter/material.dart';

class UserNewQuestionnaire extends StatelessWidget {
  late final Function addTx;
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  UserNewQuestionnaire(this.addTx);
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
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Description'),
              //onChanged: (val) => descriptionInput = val,
              controller: descriptionController,
            ),
            TextButton(
              child: Text('Add Transaction'),
              onPressed: () {
                addTx(titleController.text, descriptionController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
