// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoginPage());
    },
    RegisterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RegisterPage());
    },
    RegisterSuccesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RegisterSuccesPage());
    },
    ForgotRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ForgotPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(LoginRoute.name, path: '/login-page'),
        RouteConfig(RegisterRoute.name, path: '/register-page'),
        RouteConfig(RegisterSuccesRoute.name, path: '/register-succes-page'),
        RouteConfig(ForgotRoute.name, path: '/forgot-page')
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/register-page');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [RegisterSuccesPage]
class RegisterSuccesRoute extends PageRouteInfo<void> {
  const RegisterSuccesRoute()
      : super(RegisterSuccesRoute.name, path: '/register-succes-page');

  static const String name = 'RegisterSuccesRoute';
}

/// generated route for
/// [ForgotPage]
class ForgotRoute extends PageRouteInfo<void> {
  const ForgotRoute() : super(ForgotRoute.name, path: '/forgot-page');

  static const String name = 'ForgotRoute';
}
