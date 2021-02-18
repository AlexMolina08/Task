import 'package:flutter/material.dart';

class TaskWidget extends StatefulWidget {

  final checkBoxValue;
  final Function onChanged;

  TaskWidget({@required this.checkBoxValue , @required this.onChanged});

  @override
  _TaskWidgetState createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Comprar leche'),
        Checkbox(
          value: widget.checkBoxValue,
          onChanged: widget.onChanged,
        ),
      ],
    );
  }
}
