import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/tasks/task_data.dart';
import 'screens/task_screen.dart';
import 'tasks/task_data.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      lazy: true,
      create: (context)=>TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}



