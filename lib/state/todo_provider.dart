import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/data/todo_repository.dart';

final todoRepositoryProvider = Provider((ref) => TodoRepository());

final todoListProvider = FutureProvider<List<Map<String, dynamic>>>((ref) {
  final repository = ref.read(todoRepositoryProvider);
  return repository.fetchTodos();
});
