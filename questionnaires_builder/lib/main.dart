import 'package:flutter/material.dart';

import 'screens/questionnaires_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Questinnaires',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: Color.fromRGBO(4, 17, 17, 1),
        ),
        //home: const MyHomePage(title: 'Questinnaires'),
        initialRoute: '/',
        routes: {
          '/': ((ctx) => QuestionnairesScreen()),
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState(title);
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState(Object title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('Navigation Time!'),
      ),
    );
  }
}
