import 'package:flash_chat/models/task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flash_chat/models/task_data.dart';
class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle="";
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
          ),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Add Task",textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30,color: Colors.lightBlueAccent),),
            TextField(
              autofocus: true,
              onChanged: (newText){
            newTaskTitle=newText;
              },
            ),
            ElevatedButton(
              child: Text("Add",style: TextStyle(color: Colors.white),
              ),
              onPressed: (){
                final task =Task(name: newTaskTitle);

                Provider.of<TaskData>(context).addTask(newTaskTitle);

                Navigator.pop(context);
               // print(newTaskTitle);
              },
            ),
          ],
        ),
      ),
    );
  }
}
