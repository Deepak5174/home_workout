import 'package:flutter/material.dart';

class todolist extends StatefulWidget {
  const todolist({super.key});

  @override
  State<todolist> createState() => _todolistState();
}

class _todolistState extends State<todolist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "todo list",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple),
              
        ),
        
      ),
      body: AnimatedList(key: _animatedlistkey,),
    );
  }
}
