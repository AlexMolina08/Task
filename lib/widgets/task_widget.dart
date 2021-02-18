import 'package:flutter/material.dart';
import 'package:task/models/task.dart';

class TaskWidget extends StatefulWidget {
  Task task;
  TaskWidget({@required this.task});

  @override
  _TaskWidgetState createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          widget.task.getText(),
          style: TextStyle(

            decoration: (widget.task.isDone())
                ? TextDecoration.lineThrough
                : TextDecoration.none
          ),
        ),
        Checkbox(
          value: widget.task.isDone(),
          onChanged: (value) {
            setState(
              () => widget.task.changeValue(),
            );
          },
        ),
      ],
    );
  }
}
