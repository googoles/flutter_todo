import 'package:flutter/material.dart';
import 'package:flutter_todo/widgets/task_tile.dart';
import 'package:flutter_todo/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TaskListsState createState() => _TaskListsState();
}

class _TaskListsState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "buy something"),
    Task(name: "buy Mac"),
    Task(name: "siba"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
