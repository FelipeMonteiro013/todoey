import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool checkboxState;
  final String taskTitle;
  final checkboxCallback;

  TaskTile(
      {required this.checkboxState,
      required this.taskTitle,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: checkboxState ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkboxState,
        onChanged: checkboxCallback,
      ),
    );
  }
}
