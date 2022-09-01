import 'package:flutter/material.dart';

import 'core/core.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.from(
        // useMaterial3: true,
        colorScheme: const ColorScheme.light(
          primary: Colors.blueAccent,
        ),
      ),
      routeInformationProvider: appRouter.routeInformationProvider,
      routeInformationParser: appRouter.routeInformationParser,
      routerDelegate: appRouter.routerDelegate,
      title: 'Christian Hizon',
    );
  }
}
