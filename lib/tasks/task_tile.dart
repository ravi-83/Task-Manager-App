import 'package:flutter/material.dart';
import 'package:to_do/tasks/task_list.dart';
import 'package:to_do/task.dart';
class TaskTile extends StatefulWidget {

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  List<Task> list=[
    Task(name: 'Buy milk'),
    Task(name: 'Buy food'),
    Task(name: 'Buy Tea'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index){
      return (
          TasksList(
              textTitle: list[index].name,
              isChecked: list[index].isDone,
              onMake: (checkBoxState) {
                setState(() {
                  list[index].toggleDone();
                });
              },
          )
      );
    },
    );
  }
}


