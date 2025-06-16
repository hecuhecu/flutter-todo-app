import 'package:dio/dio.dart';

class TodoRepository {
  final Dio _dio = Dio();

  TodoRepository() {
    // HTTPヘッダーを設定して403エラーを回避
    _dio.options.headers = {
      'User-Agent': 'Mozilla/5.0 (compatible; Flutter-TodoApp/1.0)',
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
  }

  Future<List<Map<String, dynamic>>> fetchTodos() async {
    final response = await _dio.get(
      'https://jsonplaceholder.typicode.com/todos',
    );

    // 外部APIのデータを内部モデルに変換
    final rawData = List<Map<String, dynamic>>.from(response.data);
    return rawData.map((todo) => _mapToInternalModel(todo)).toList();
  }

  // 外部APIのデータ構造を内部モデルに変換
  Map<String, dynamic> _mapToInternalModel(Map<String, dynamic> externalTodo) {
    return {
      'id': externalTodo['id'],
      'title': externalTodo['title'],
      'isCompleted': externalTodo['completed'],
      // 'userId': externalTodo['userId'],
    };
  }
}
