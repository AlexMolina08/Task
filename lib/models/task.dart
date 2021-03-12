import 'package:flutter/cupertino.dart';

class Task{
  String title;
  bool completed;


  Task({ @required this.title , this.completed = false});


  bool isChecked() => completed;
  String getTitle() => title;

  // Cambia alestado comtrario a completed
  void changeTaskState(bool newState) {
    completed = newState;
  }

  // Cambiar el titulo de la tarea
  void setTitle(String newTitle){
    title = newTitle;
  }



}