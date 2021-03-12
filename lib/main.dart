import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:task/models/task_data.dart';

void main() =>
    runApp(
      //Provider para que la lista de datos sea accesible para todos los del arbol
      ChangeNotifierProvider(
        create: (context) => TaskData(),
        child: TaskApp(),
      ),
    );

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
