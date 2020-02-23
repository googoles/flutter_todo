import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo/models/task.dart';
import 'package:flutter_todo/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {


  String newTaskTitle;

  @override
  Widget build(BuildContext context) {

    String newTaskTitle;

    return Container(
      color: Color(0xff6D4F22),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xffF9AA33),
          borderRadius: BorderRadius.only(topRight:Radius.circular(20), topLeft: Radius.circular(20))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('할 일 추가',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff344955),
              fontSize: 30,
            ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: '할 일을 입력하세요',
              ),
            ),
            FlatButton(
              onPressed: (){
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
              color: Color(0xff344955),
              child: Text('추가', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
