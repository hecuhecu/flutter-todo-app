import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  final List<Map<String, dynamic>> todos = const [
    {'id': 1, 'title': '買い物に行く', 'isCompleted': false},
    {'id': 2, 'title': 'Flutterを勉強する', 'isCompleted': true},
    {'id': 3, 'title': '掃除をする', 'isCompleted': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todo = todos[index];
          return ListTile(
            title: Text(
              todo['title'],
              style: TextStyle(
                decoration: todo['isCompleted']
                    ? TextDecoration.lineThrough
                    : null,
                color: todo['isCompleted'] ? Colors.grey : Colors.black,
              ),
            ),
            leading: Icon(
              todo['isCompleted']
                  ? Icons.check_circle
                  : Icons.radio_button_unchecked,
              color: todo['isCompleted'] ? Colors.green : Colors.grey,
            ),
          );
        },
      ),
    );
  }
}
