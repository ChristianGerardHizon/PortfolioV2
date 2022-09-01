import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hizonchristian/screens/root.dart';

import 'enums.dart';

final appRouter = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      redirect: (_) => '/about',
    ),
    GoRoute(
      path: '/:screen(about|experience|projects|work|contact)',
      builder: (BuildContext context, GoRouterState state) {
        final String screen = state.params['screen'] as String;
        final type = fromString(screen);
        return RootScreen(type: type);
      },
    )
  ],
);

ScreenType fromString(String val) {
  return ScreenType.values.firstWhere((e) => e.name == val);
}
