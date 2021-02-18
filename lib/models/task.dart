import 'package:flutter/cupertino.dart';

class Task{

  bool _isDone;
  final String text;

  Task({@required this.text}){
    _isDone = false; //inicializa tarea como no completada
  }


  // cambiar valor _isDone
  void changeValue() => _isDone = !_isDone;

  bool isDone() => _isDone;
  String getText() => text;




}