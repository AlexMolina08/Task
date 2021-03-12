import 'package:flutter/material.dart';
import 'package:task/widgets/task_widget.dart';
import 'package:task/models/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(title: 'Comprar pan'),
    Task(title: 'Ir al peluquero'),
    Task(title: "hacer los deberes"),
    Task(title: "Comer con el abuelo")
  ];

  void add(Task newTask) {
    tasks.add(newTask);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      // context tiene la info de donde está el padre del item builder en el widget tree
      itemBuilder: (BuildContext context, index) {
        return TaskWidget(
          taskTitle: tasks[index].getTitle(),
          isChecked: tasks[index].isChecked(),
          onChanged: (bool newState) {
            setState(() {
              tasks[index].changeTaskState(newState);
            },);
          },
        );
      },
    );
  }
}
