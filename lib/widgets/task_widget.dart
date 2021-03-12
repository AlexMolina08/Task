import 'package:flutter/material.dart';
import 'package:task/models/task.dart';

class TaskWidget extends StatelessWidget {

  final String taskTitle;
  final bool isChecked;
  final Function onChanged;

  TaskWidget({this.isChecked , this.taskTitle , this.onChanged});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      // si la tarea ha sido completada , tacho el Text Widget
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: (isChecked)
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
         activeColor: Theme.of(context).scaffoldBackgroundColor,
         value: isChecked,
         onChanged: onChanged,
      ),
    );
  }
}

//(bool newState){
//setState(() => widget.task.changeTaskState(newState));

