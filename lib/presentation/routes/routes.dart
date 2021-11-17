import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:sched/presentation/auth/authentication_page.dart';
import 'package:sched/presentation/splash/splash_page.dart';

part 'routes.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // AutoRoute(page: BookListPage, initial: true),
    AutoRoute(
      page: Authentication,
      path: '/auth',
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      page: Splash,
      initial: true,
      path: '/splash',
    ),
  ],
)
class AppRouter extends _$AppRouter {}
