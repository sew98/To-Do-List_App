import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTile;
  final bool isChecked;
  final Function checkboxCallback;
  final Function longPressCallBack;

  TaskTile({this.isChecked,this.taskTile,this.checkboxCallback,this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTile,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null
        ),),
      onLongPress: longPressCallBack,
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}




