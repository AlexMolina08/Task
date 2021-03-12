import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/models/task_data.dart';
import 'package:task/widgets/task_list.dart';
import 'package:task/screens/new_task_screen.dart';
import 'package:task/widgets/task_logo.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: Icon(Icons.add),
        elevation: 0.0,
        // Al pulsar , mostramos una bottomSheet
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                // ponemos el tamaño del teclado como padding
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(),
              ),
            ),
          );
        },
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container con logo nº Tareas
            Container(
              padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // *** logo ***
                  TaskLogo(),
                  // *** Nº TAREAS ***
                  Text(
                    '${Provider.of<TaskData>(context).getTaskNumber()} tareas',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white60,
                    ),
                  ),

                  // CONTAINER CON LA LISTA DE TAREAS
                ],
              ),
            ),
            // Container con listview de las tareas
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                  ),
                ),
                child: TaskList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
