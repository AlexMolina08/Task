import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/constants.dart';
import 'package:task/widgets/task_widget.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  bool checkBoxValue = false;



  Widget build(BuildContext context) {
    bool check = false;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icono , nombre de la app y nº tareas
          Container(
            padding: EdgeInsets.only(
              top: 60.0,
              left: 40.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ICON
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: kBackgroundColor,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                //TITLE
                Text(
                  "Task",
                  style: kLogoTextStyle,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "12 tareas",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey.shade300,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),

          SizedBox(height: 55.0),

          // Container con las tareas
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),

              // Lista de tareas

              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                child: ListView(

                  children: [

                  ],
                ),
              ),
            ),
          )
        ],
      ),

      // Botón de añadir tarea
      floatingActionButton: FloatingActionButton(
        backgroundColor: kBackgroundColor,
        child: Icon(
          Icons.ac_unit,
          size: 40.0,
        ),
        elevation: 0.0,
        onPressed: () {
          print("añadir tarea");
        },
      ),
    );
  }
}
