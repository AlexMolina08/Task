import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/screens/tasks_screen.dart';

void main() => runApp(TaskApp());


class TaskApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey,
        fontFamily: "Oxanium",
      ),
      home: TaskScreen(),
    );
  }
}
