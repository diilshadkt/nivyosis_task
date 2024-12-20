import 'package:go_router/go_router.dart';
import 'package:nivyosis_task/features/home/view/pages/add_user_page.dart';
import 'package:nivyosis_task/features/home/view/pages/home_page.dart';
import 'package:nivyosis_task/main.dart';

final router = GoRouter(
  initialLocation: HomePage.routePath, 
  navigatorKey: MyApp.navigatorKey,
  routes: [
  GoRoute(
    path: HomePage.routePath,
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: AddUserPage.routePath,
    builder: (context, state) => const AddUserPage(),
  ),
]);
