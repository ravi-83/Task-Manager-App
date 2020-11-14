
import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  final bool isChecked;
  final String textTitle;
  final Function onMake;
  TasksList({this.isChecked,this.textTitle,this.onMake});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        textTitle,
      style:TextStyle(
        decoration: !isChecked ? TextDecoration.none : TextDecoration.lineThrough,
      ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
       onChanged: onMake,
      ),
    );
  }
}


