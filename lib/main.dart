import 'package:flutter/material.dart';
import 'package:walls_condition_checker/welcome_Screen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Walls Condition Checker'),
        backgroundColor: klightblue,
      ),
      body: WelcomeScreen(),
    ));
  }
}
