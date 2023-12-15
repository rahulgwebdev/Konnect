import 'package:flutter/material.dart';

import 'colors/colors.dart';
import 'route/app_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // This widget is the root of the application.
  // All global app configs/settings will be configured from here

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return _buildTheme();
  }

  MaterialApp _buildTheme() {
    final ThemeData base = ThemeData.light();

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Lato',
        colorScheme: base.colorScheme.copyWith(
          primary: AppColors.primaryColor,
          onPrimary: AppColors.onPrimaryColor,
          primaryContainer: AppColors.primaryColor,
          background: AppColors.backgroundColor,
          brightness: Brightness.light,
        ),
        textTheme: base.textTheme.apply(
          bodyColor: AppColors.onPrimaryColor,
        ),
        scaffoldBackgroundColor: AppColors.backgroundColor,
        appBarTheme: base.appBarTheme
            .copyWith(backgroundColor: AppColors.backgroundColor),
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
