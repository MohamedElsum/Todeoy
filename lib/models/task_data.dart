import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'Flutter study'),
    Task(name: 'Play a match'),
    Task(name: 'Watching Movie'),
  ];

  int get taskCount{
    return _tasks.length;
  }

  UnmodifiableListView get tasks{
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}