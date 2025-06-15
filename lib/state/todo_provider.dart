import 'package:flutter_riverpod/flutter_riverpod.dart';

final todoProvider = StateProvider<List<Map<String, dynamic>>>(
  (ref) => [
    {'id': 1, 'title': '買い物に行く', 'isCompleted': false},
    {'id': 2, 'title': 'Flutterを勉強する', 'isCompleted': true},
    {'id': 3, 'title': '掃除をする', 'isCompleted': false},
  ],
);
