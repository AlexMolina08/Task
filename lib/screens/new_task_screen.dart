import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(50.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.0),
            topLeft: Radius.circular(15.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Añadir Tarea",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              autofocus: true, // Activar teclado nada mas abrir la ventana
              decoration: InputDecoration(
                hintText: 'Introduce nombre de la tarea',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.5,
                  ),
                ),
                
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            FlatButton(
              color: Colors.blueGrey,
              child: Text(
                "Añadir",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
