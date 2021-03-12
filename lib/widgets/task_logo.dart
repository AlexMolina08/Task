import 'package:flutter/material.dart';
import 'package:task/constants.dart';

class TaskLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          foregroundColor: Theme.of(context).scaffoldBackgroundColor,
          radius: kAppIconSize,
          child: Icon(
            Icons.list_alt_outlined,
            size: kAppIconSize,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "Tareas",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
      ],
    );
  }
}
