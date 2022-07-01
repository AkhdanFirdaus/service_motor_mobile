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
    OnboardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const OnboardPage());
    },
    AppMainLayoutRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AppMainLayoutPage());
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
    },
    ProfileRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ProfilePage());
    },
    ReparationRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ReparationPage());
    },
    LocationRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LocationPage());
    },
    SettingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SettingPage());
    },
    NotificationRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const NotificationPage());
    },
    HistoryDetailRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HistoryDetailPage());
    },
    TicketActiveRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const TicketActivePage());
    },
    TicketChatRoute.name: (routeData) {
      final args = routeData.argsAs<TicketChatRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              TicketChatPage(key: args.key, transactionId: args.transactionId));
    },
    TicketDetailRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const TicketDetailPage());
    },
    TicketSuccessRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const TicketSuccessPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(OnboardRoute.name, path: '/onboard-page'),
        RouteConfig(AppMainLayoutRoute.name, path: '/app-main-layout-page'),
        RouteConfig(LoginRoute.name, path: '/login-page'),
        RouteConfig(RegisterRoute.name, path: '/register-page'),
        RouteConfig(RegisterSuccesRoute.name, path: '/register-succes-page'),
        RouteConfig(ForgotRoute.name, path: '/forgot-page'),
        RouteConfig(ProfileRoute.name, path: '/profile-page'),
        RouteConfig(ReparationRoute.name, path: '/reparation-page'),
        RouteConfig(LocationRoute.name, path: '/location-page'),
        RouteConfig(SettingRoute.name, path: '/setting-page'),
        RouteConfig(NotificationRoute.name, path: '/notification-page'),
        RouteConfig(HistoryDetailRoute.name, path: '/history-detail-page'),
        RouteConfig(TicketActiveRoute.name, path: '/ticket-active-page'),
        RouteConfig(TicketChatRoute.name, path: '/ticket-chat-page'),
        RouteConfig(TicketDetailRoute.name, path: '/ticket-detail-page'),
        RouteConfig(TicketSuccessRoute.name, path: '/ticket-success-page')
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [OnboardPage]
class OnboardRoute extends PageRouteInfo<void> {
  const OnboardRoute() : super(OnboardRoute.name, path: '/onboard-page');

  static const String name = 'OnboardRoute';
}

/// generated route for
/// [AppMainLayoutPage]
class AppMainLayoutRoute extends PageRouteInfo<void> {
  const AppMainLayoutRoute()
      : super(AppMainLayoutRoute.name, path: '/app-main-layout-page');

  static const String name = 'AppMainLayoutRoute';
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

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '/profile-page');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [ReparationPage]
class ReparationRoute extends PageRouteInfo<void> {
  const ReparationRoute()
      : super(ReparationRoute.name, path: '/reparation-page');

  static const String name = 'ReparationRoute';
}

/// generated route for
/// [LocationPage]
class LocationRoute extends PageRouteInfo<void> {
  const LocationRoute() : super(LocationRoute.name, path: '/location-page');

  static const String name = 'LocationRoute';
}

/// generated route for
/// [SettingPage]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute() : super(SettingRoute.name, path: '/setting-page');

  static const String name = 'SettingRoute';
}

/// generated route for
/// [NotificationPage]
class NotificationRoute extends PageRouteInfo<void> {
  const NotificationRoute()
      : super(NotificationRoute.name, path: '/notification-page');

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [HistoryDetailPage]
class HistoryDetailRoute extends PageRouteInfo<void> {
  const HistoryDetailRoute()
      : super(HistoryDetailRoute.name, path: '/history-detail-page');

  static const String name = 'HistoryDetailRoute';
}

/// generated route for
/// [TicketActivePage]
class TicketActiveRoute extends PageRouteInfo<void> {
  const TicketActiveRoute()
      : super(TicketActiveRoute.name, path: '/ticket-active-page');

  static const String name = 'TicketActiveRoute';
}

/// generated route for
/// [TicketChatPage]
class TicketChatRoute extends PageRouteInfo<TicketChatRouteArgs> {
  TicketChatRoute({Key? key, required String transactionId})
      : super(TicketChatRoute.name,
            path: '/ticket-chat-page',
            args: TicketChatRouteArgs(key: key, transactionId: transactionId));

  static const String name = 'TicketChatRoute';
}

class TicketChatRouteArgs {
  const TicketChatRouteArgs({this.key, required this.transactionId});

  final Key? key;

  final String transactionId;

  @override
  String toString() {
    return 'TicketChatRouteArgs{key: $key, transactionId: $transactionId}';
  }
}

/// generated route for
/// [TicketDetailPage]
class TicketDetailRoute extends PageRouteInfo<void> {
  const TicketDetailRoute()
      : super(TicketDetailRoute.name, path: '/ticket-detail-page');

  static const String name = 'TicketDetailRoute';
}

/// generated route for
/// [TicketSuccessPage]
class TicketSuccessRoute extends PageRouteInfo<void> {
  const TicketSuccessRoute()
      : super(TicketSuccessRoute.name, path: '/ticket-success-page');

  static const String name = 'TicketSuccessRoute';
}
