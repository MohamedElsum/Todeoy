import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

 final bool isChecked;
 final String taskTitle;
 final ValueChanged<bool?> checkboxCallback;
 final void Function() onLongPressCallback;

 TaskTile({required this.taskTitle,required this.isChecked,required this.checkboxCallback,required this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:onLongPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      )
    );
  }
}


