import 'package:flutter/material.dart';
import 'package:personal_pull_list/util/dialogue_box.dart';
import 'package:personal_pull_list/util/todo_tile.dart'; 
 

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _controller = TextEditingController();


  List toDoList = [
    ['Make Lists', false ],
    ["Mow Lawn", false],
  ];

  //checkbox tapped
  void checkBoxChanged(bool? value, int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void saveTask(){
    setState(() {
      toDoList.add([_controller.text, false]);
    });
  }

  void createNewTask(){
    showDialog(
      context: context, 
      builder: (context){
        return DialogueBox(
          controller: _controller,
          onSave: saveTask,
          onClear: ()=> Navigator.of(context).pop(),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.red[600],
    appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: const Color(0xFFff0000),
          title: const Text('Personal Pull list'),
          elevation: 0,
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          child: Icon(Icons.add),
          backgroundColor: Colors.yellow,
        ),
        body:
          ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (context, index){
              return ToDoTile(
                taskName: toDoList[index][0],
                taskCompleted: toDoList[index][1],
                onChanged: (value) => checkBoxChanged(value, index),
              );
            },
          )
        );
    }
}
