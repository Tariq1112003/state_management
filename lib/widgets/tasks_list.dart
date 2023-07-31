import 'package:flutter/material.dart';
import 'package:flash_chat/widgets/task_tile.dart';
//import 'package:flash_chat/models/task.dart';
import 'package:provider/provider.dart';
import 'package:flash_chat/models/task_data.dart';
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(itemBuilder: (context, index){
          final task =taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            CheckBoxCallBack: (checkboxstate){
              taskData.updateTask(task);
              // setState(() {
              //   widget.tasks[index].toggleDone();
              // });
            },
            longpressCallback: (){
              taskData.deleteTask(task);
            },
          );
        },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
