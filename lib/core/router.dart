import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../screens/root.dart';

import 'enums.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        // final screen = state.params['screen'] as String;
        // final type = fromString(screen);
        return const RootScreen();
      },
    )
  ],
);

ScreenType fromString(String val) {
  return ScreenType.values.firstWhere((e) => e.name == val);
}
