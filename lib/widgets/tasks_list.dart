import 'package:flutter/material.dart';
import 'package:flutter_todo/widgets/task_tile.dart';

class TaskLists extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView(

      padding: EdgeInsets.all(20),
      children: <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile(),

      ],
    );
  }
}