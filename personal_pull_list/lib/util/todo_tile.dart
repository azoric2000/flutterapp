import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.yellow[600]
        ),
        child: Row(
          
          children: [
            Checkbox(
              value: taskCompleted, 
              onChanged: onChanged, 
              activeColor: Colors.red,
              ), 
            Text(
              taskName,
              style: TextStyle(decoration: taskCompleted
                ? TextDecoration.lineThrough
                :TextDecoration.none)
            ),
          ],
        ),
      ),
    );
  }
}
