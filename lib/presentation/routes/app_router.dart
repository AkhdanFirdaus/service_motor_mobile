import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/auth/forgot/forgot_page.dart';
import 'package:service_motor_mobile/presentation/auth/login/login_page.dart';
import 'package:service_motor_mobile/presentation/auth/register/register_page.dart';
import 'package:service_motor_mobile/presentation/auth/register/register_success_page.dart';
import 'package:service_motor_mobile/presentation/core/main_layout.dart';
import 'package:service_motor_mobile/presentation/history/history_detail_page.dart';
import 'package:service_motor_mobile/presentation/location/location_page.dart';
import 'package:service_motor_mobile/presentation/notification/notification_page.dart';
import 'package:service_motor_mobile/presentation/onboard/onboard_page.dart';
import 'package:service_motor_mobile/presentation/reparation/reparation_page.dart';
import 'package:service_motor_mobile/presentation/setting/setting_page.dart';
import 'package:service_motor_mobile/presentation/splash/splash_page.dart';
import 'package:service_motor_mobile/presentation/ticket/ticket_active/ticket_active_page.dart';
import 'package:service_motor_mobile/presentation/ticket/ticket_chat/ticket_chat_page.dart';
import 'package:service_motor_mobile/presentation/ticket/ticket_detail/ticket_detail_page.dart';
import 'package:service_motor_mobile/presentation/ticket/ticket_detail/ticket_success_page.dart';

export 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: OnboardPage),
    AutoRoute(page: MainLayoutPage),
    AutoRoute(page: LoginPage),
    AutoRoute(page: RegisterPage),
    AutoRoute(page: RegisterSuccesPage),
    AutoRoute(page: ForgotPage),
    AutoRoute(page: ReparationPage),
    AutoRoute(page: LocationPage),
    AutoRoute(page: SettingPage),
    AutoRoute(page: NotificationPage),
    AutoRoute(page: HistoryDetailPage),
    AutoRoute(page: TicketActivePage),
    AutoRoute(page: TicketChatPage),
    AutoRoute(page: TicketDetailPage),
    AutoRoute(page: TicketSuccessPage),
  ],
)
class AppRouter extends _$AppRouter {}
