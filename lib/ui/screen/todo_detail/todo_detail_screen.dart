import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class TodoDetailScreen extends ConsumerWidget {
  const TodoDetailScreen({super.key, required this.todoData});

  final Map<String, dynamic> todoData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              todoData['isCompleted']
                  ? Icons.check_circle
                  : Icons.radio_button_unchecked,
              color: todoData['isCompleted'] ? Colors.green : Colors.orange,
            ),
            SizedBox(width: 8),
            Expanded(child: Text(todoData['title'])),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
              color: todoData['isCompleted'] ? Colors.green : Colors.orange,
              width: 4.0,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('将来的にメモを表示')],
          ),
        ),
      ),
    );
  }
}
