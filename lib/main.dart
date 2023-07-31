import 'package:flutter/material.dart';
import 'package:flash_chat/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:flash_chat/models/task_data.dart';
import 'dart:core';
void main() =>runApp( MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(),

      child: MaterialApp(
          home: TasksScreen(),
        ),
    );
  }
}
