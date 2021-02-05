import 'package:flutter/foundation.dart';
import 'package:to_do/task.dart';
import 'dart:collection';


class TaskData extends ChangeNotifier{
  List<Task> _list=[
    // Task(name: 'Buy milk'),
    // Task(name: 'Buy food'),
    // Task(name: 'Buy Tea'),
  ];
  int get taskCount{
    return _list.length;
  }
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_list);
  }

  void addTask(String text){
    final task = Task(name: text);
    _list.add(task);
    notifyListeners();
  }
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _list.remove(task);
    notifyListeners();
  }
}