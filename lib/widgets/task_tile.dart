import 'package:flutter/material.dart';
import 'dart:core';
class TaskTile extends StatelessWidget {

 final bool isChecked;
 final String taskTitle;
 final Function CheckBoxCallBack;
final  Function longpressCallback;

 TaskTile({required this.isChecked,
   required this.taskTitle,required this.CheckBoxCallBack,
   required this.longpressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      //##########
    // onLongPress: longpressCallback,
      title: Text(
       taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged:(newValue){
          CheckBoxCallBack(newValue);
        }
      ),
    );
  }
}

