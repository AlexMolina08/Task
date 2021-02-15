import 'package:flutter/material.dart';
import 'package:task/constants.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool check = false;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 100.0,
          left: 40.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ICON
            Container(
              padding: EdgeInsets.all(10.0),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Icon(
                Icons.list,
                size: 50.0,
                color: kBackgroundColor,
              ),
            ),
            SizedBox(
              height: 40.0,
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
                color: Colors.white,
                fontWeight: FontWeight.w300
              ),
            ),

            Container(
              color: Colors.white,
              height: 300.0,
            ),

          ],
        ),
      ),
    );
  }
}
