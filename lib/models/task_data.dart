import 'package:flutter/foundation.dart';
import 'package:flash_chat/models/task.dart';
import 'package:flash_chat/main.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Bye egg"),
    Task(name: "Bye apple"),
    Task(name: "Bye a car"),
  ];

 UnmodifiableListView <Task> get tasks{
   return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }
void  addTask (String newTaskTitle) {

final task= Task(name: newTaskTitle);
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
