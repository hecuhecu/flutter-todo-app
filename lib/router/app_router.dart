import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    // 初期画面として TodoListScreen を設定
    AutoRoute(page: TodoListRoute.page, initial: true),
    AutoRoute(page: TodoDetailRoute.page),
    // AutoRoute(page: CreateTodoRoute.page, path: '/create'),
    // AutoRoute(page: SettingsRoute.page, path: '/settings'),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    // optionally add root guards here
  ];
}
