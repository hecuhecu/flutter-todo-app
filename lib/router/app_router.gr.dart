// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
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
    required String id,
    List<_i3.PageRouteInfo>? children,
  }) : super(
         TodoDetailRoute.name,
         args: TodoDetailRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'TodoDetailRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TodoDetailRouteArgs>();
      return _i1.TodoDetailScreen(key: args.key, id: args.id);
    },
  );
}

class TodoDetailRouteArgs {
  const TodoDetailRouteArgs({this.key, required this.id});

  final _i4.Key? key;

  final String id;

  @override
  String toString() {
    return 'TodoDetailRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TodoDetailRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
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
