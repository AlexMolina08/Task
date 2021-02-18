import 'package:flutter/material.dart';
import 'package:task/constants.dart';
import 'package:task/screens/tasks_screen.dart';

void main() => runApp(Tasks());



class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor
      ),
      home: TasksScreen(),
    );
  }
}
