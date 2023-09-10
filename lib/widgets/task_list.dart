import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskLists extends StatefulWidget {
  const TaskLists({super.key});

  @override
  State<TaskLists> createState() => _TaskListsState();
}

class _TaskListsState extends State<TaskLists> {
  List<Task> tasks = [
    Task(name: "Get fruits"),
    Task(name: "Go to market"),
    Task(name: "Take Notes")
  ];

  void addNewTask(String taskname) {
    tasks.add(Task(name: taskname));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          ischecked: tasks[index].isDone,
          checkboxCallback: (bool newValue) {
            setState(
              () {
                tasks[index].toggleDone();
              },
            );
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
