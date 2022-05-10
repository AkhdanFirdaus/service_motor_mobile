import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/auth/forgot/forgot_page.dart';
import 'package:service_motor_mobile/presentation/auth/login/login_page.dart';
import 'package:service_motor_mobile/presentation/auth/register/register_page.dart';
import 'package:service_motor_mobile/presentation/auth/register/register_success_page.dart';
import 'package:service_motor_mobile/presentation/splash/splash_page.dart';

export 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: LoginPage),
    AutoRoute(page: RegisterPage),
    AutoRoute(page: RegisterSuccesPage),
    AutoRoute(page: ForgotPage),
  ],
)
class AppRouter extends _$AppRouter {}
