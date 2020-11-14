import 'package:flutter/material.dart';


class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 20,bottom: 20,left: 40,right: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),

            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(

              ),
              onChanged: (value){
              },
            ),
            SizedBox(height: 20,),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: (){



              },
              height: 50,
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


