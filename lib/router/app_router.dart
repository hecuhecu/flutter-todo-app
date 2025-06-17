import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    // 初期画面として TodoListScreen を設定
    AutoRoute(page: TodoListRoute.page, path: '/', initial: true),
  ];
}
