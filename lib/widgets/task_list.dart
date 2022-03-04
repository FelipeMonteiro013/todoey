import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = TaskData.tasks[index];
            return GestureDetector(
              onLongPress: () => TaskData.removeTask(index),
              child: TaskTile(
                checkboxState: task.isDone,
                taskTitle: task.name,
                checkboxCallback: (newValue) {
                  TaskData.updateTask(task);
                },
              ),
            );
          },
          itemCount: TaskData.taskLength,
        );
      },
    );
  }
}
