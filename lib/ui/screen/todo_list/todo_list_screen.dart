import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/state/todo_provider.dart';

class TodoListScreen extends ConsumerWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todoProvider);

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
