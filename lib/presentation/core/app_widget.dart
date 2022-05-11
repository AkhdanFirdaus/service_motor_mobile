import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/core/app_theme.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.defaultRouteParser(),
      routerDelegate: _router.delegate(),
      title: 'Servis Motor',
      theme: AppTheme.theme,
    );
  }
}
