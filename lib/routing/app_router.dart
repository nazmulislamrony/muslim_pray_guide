import 'dart:js';

import 'package:muslim_pray_guide/features/homepage.dart';
import 'package:muslim_pray_guide/routing/not_found_screen.dart';
import 'package:riverpod/riverpod.dart';
import 'package:go_router/go_router.dart';
enum AppRoute{
  mainpage,
  drawer
}

final goRouterProvider =Provider<GoRouter>((ref) {

  return GoRouter(  initialLocation: '/',
      debugLogDiagnostics: false,
  routes: [GoRoute(path: "/",name: AppRoute.mainpage.name,builder:(context, state) => HomePage()),],
  errorBuilder: (context, state) => const NotFoundScreen());
});