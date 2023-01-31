import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.red),
          foregroundColor: MaterialStatePropertyAll(Colors.black),
        ),
        onPressed: selectHandler,
        child: const Text('Answer 1'),
      ),
    );
  }
}
