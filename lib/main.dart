import 'package:flutter/material.dart';
import 'package:todoey/model/task_data.dart';
import 'package:todoey/screen/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() =>  runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}