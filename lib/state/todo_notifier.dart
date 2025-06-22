import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoNotifier extends StateNotifier<List<Map<String, dynamic>>> {
  TodoNotifier() : super([]);

  void addTodo(String title) {
    final newTodo = {
      'id': DateTime.now().millisecondsSinceEpoch,
      'title': title,
      'isCompleted': false,
    };
    state = [...state, newTodo];
  }
}
