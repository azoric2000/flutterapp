import 'package:flutter/material.dart';
import 'package:personal_pull_list/util/buttons.dart';

class DialogueBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onClear;

  DialogueBox({super.key, 
    required this.controller,
    required this.onSave,
    required this.onClear
  });

  @override
  Widget build(BuildContext context){
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ 
          
          TextField( 
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Add Item',
            )
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              
              Buttons(text: "Save", onPressed: onSave),
              const SizedBox(width: 9),
              Buttons(text: "Clear", onPressed: onClear)
          ],)

        ],)


      )

    );
  }
}