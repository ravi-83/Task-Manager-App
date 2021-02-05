import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  final bool isChecked;
  final String textTitle;
  final Function onMake;
  final Function onLongPressing;
  TasksList({this.isChecked, this.textTitle, this.onMake, this.onLongPressing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: onLongPressing,
        title: textTitle != null
            ? Text(
                textTitle,
                style: TextStyle(
                  fontWeight: !isChecked
                      ? FontWeight.bold
                      : FontWeight.normal,
                  decoration: !isChecked
                      ? TextDecoration.none
                      : TextDecoration.lineThrough,
                  color: !isChecked
                    ? Colors.black
                      : Colors.green
                ),
              )
            : Text(
                textTitle??'Be Productive! Add Some Task To Do!!',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
        trailing: textTitle != null
            ? Checkbox(
                value: isChecked,
                activeColor: Colors.lightBlueAccent,
                onChanged: onMake,
              )
            : Icon(
                Icons.error_outline_outlined,
                color: Colors.red,
              ),
    );
  }
}
