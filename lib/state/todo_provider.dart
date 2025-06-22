import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/state/todo_notifier.dart';

final todoListProvider =
    StateNotifierProvider<TodoNotifier, List<Map<String, dynamic>>>((ref) {
      return TodoNotifier();
    });
