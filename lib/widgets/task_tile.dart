import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool ischecked = false;
  String taskTitle;
  Function checkboxCallback;

  TaskTile({
    required this.taskTitle,
    required this.ischecked,
    required this.checkboxCallback,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: ischecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: ischecked,
        checkColor: Colors.lightBlueAccent,
        onChanged: (newValue) {
          checkboxCallback(newValue);
        },
      ),
    );
  }
}
