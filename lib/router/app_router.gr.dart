// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:collection/collection.dart' as _i5;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter_todo_app/ui/screen/todo_detail/todo_detail_screen.dart'
    as _i1;
import 'package:flutter_todo_app/ui/screen/todo_list/todo_list_screen.dart'
    as _i2;

/// generated route for
/// [_i1.TodoDetailScreen]
class TodoDetailRoute extends _i3.PageRouteInfo<TodoDetailRouteArgs> {
  TodoDetailRoute({
    _i4.Key? key,
    required Map<String, dynamic> todoData,
    List<_i3.PageRouteInfo>? children,
  }) : super(
         TodoDetailRoute.name,
         args: TodoDetailRouteArgs(key: key, todoData: todoData),
         initialChildren: children,
       );

  static const String name = 'TodoDetailRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TodoDetailRouteArgs>();
      return _i1.TodoDetailScreen(key: args.key, todoData: args.todoData);
    },
  );
}

class TodoDetailRouteArgs {
  const TodoDetailRouteArgs({this.key, required this.todoData});

  final _i4.Key? key;

  final Map<String, dynamic> todoData;

  @override
  String toString() {
    return 'TodoDetailRouteArgs{key: $key, todoData: $todoData}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TodoDetailRouteArgs) return false;
    return key == other.key &&
        const _i5.MapEquality().equals(todoData, other.todoData);
  }

  @override
  int get hashCode => key.hashCode ^ const _i5.MapEquality().hash(todoData);
}

/// generated route for
/// [_i2.TodoListScreen]
class TodoListRoute extends _i3.PageRouteInfo<void> {
  const TodoListRoute({List<_i3.PageRouteInfo>? children})
    : super(TodoListRoute.name, initialChildren: children);

  static const String name = 'TodoListRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.TodoListScreen();
    },
  );
}
