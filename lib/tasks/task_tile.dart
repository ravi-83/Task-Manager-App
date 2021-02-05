import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/tasks/task_list.dart';
import 'task_data.dart';
import 'package:to_do/task.dart';



class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child) =>ListView.builder(
        itemCount: taskData.taskCount,
        itemBuilder: (context, index){
          final task = taskData.tasks[index];
          return (
              TasksList(
                textTitle: task.name,
                isChecked: task.isDone,
                onMake:(checkboxState) {
                  taskData.updateTask(task);
                },
                onLongPressing: () {
                  taskData.deleteTask(task);
              },
              )
          );

        },
      ),
    );
  }
}



