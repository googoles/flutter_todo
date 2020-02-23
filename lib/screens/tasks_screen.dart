import 'package:flutter/material.dart';
import 'package:flutter_todo/widgets/tasks_list.dart';
import 'package:flutter_todo/screens/add_tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo/models/task_data.dart';


class TasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff344955),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen()
                )
            ),
          );
        },
        backgroundColor: Color(0xff344955),
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color(0xffF9AA33),
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    size: 40,
                    color: Color(0xff344955),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '할 일',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} 가지 ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 5),
              height: 100,
              decoration: BoxDecoration(
                  color: Color(0xffF9AA33),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: TaskLists(),
            ),
          ),
        ],
      ),
    );
  }
}
