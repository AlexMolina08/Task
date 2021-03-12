import 'package:flutter/material.dart';
import 'package:task/models/task_data.dart';
import 'package:task/widgets/task_widget.dart';
import 'package:task/models/task.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context , taskData , child){
        return ListView.builder(
          itemCount: taskData.getTaskNumber(),
          // context tiene la info de donde está el padre del item builder en el widget tree
          itemBuilder: (BuildContext context, index) {
            return TaskWidget(
              taskTitle: taskData.taskList[index].title, // obtenemos el titulo de la tarea
              isChecked: taskData.taskList[index].completed,
              onChanged: (bool newState) {
                taskData.updateTaskState(index);
              },
            );
          },
        );
      },
    );
  }
}
