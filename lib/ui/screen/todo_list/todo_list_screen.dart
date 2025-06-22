import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_todo_app/router/app_router.gr.dart';
import 'package:flutter_todo_app/state/todo_provider.dart';

@RoutePage()
class TodoListScreen extends ConsumerWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todoListProvider);

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
            onTap: () => context.router.push(TodoDetailRoute(todoData: todo)),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddTodoDialog(context, ref),
        child: Icon(Icons.add),
      ),
    );
  }

  void _showAddTodoDialog(BuildContext context, WidgetRef ref) {
    final TextEditingController controller = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('新しい Todo'),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(hintText: 'Todo のタイトルを入力'),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('キャンセル'),
          ),
          TextButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                ref.read(todoListProvider.notifier).addTodo(controller.text);
                Navigator.pop(context);
              }
            },
            child: Text('追加'),
          ),
        ],
      ),
    );
  }
}
