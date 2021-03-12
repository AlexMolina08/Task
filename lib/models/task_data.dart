import 'package:flutter/foundation.dart';
import 'package:task/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> taskList = []; // Lista con todas las tareas a realizar , al inicio está vacia

  /*
  * Función que añade una tarea con el nombre pasado por parametro
  * notifica a todos los widgets que están suscritos al provier
  * */
  void addTask(String taskName) {
    taskList.add(
      Task(
        title: taskName,
      ),
    );
    notifyListeners();
  }

  int getTaskNumber(){
    return taskList.length;
  }

  void updateTaskState(int taskIndex){
    taskList[taskIndex].completed = !taskList[taskIndex].completed;
    notifyListeners();
  }

}
