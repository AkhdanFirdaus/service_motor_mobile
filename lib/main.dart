import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:service_motor_mobile/application/notification/notification_bloc.dart';
import 'package:service_motor_mobile/firebase_options.dart';
import 'package:service_motor_mobile/injection.dart';
import 'package:service_motor_mobile/presentation/core/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final notificationBloc = NotificationBloc(
    getIt<FlutterLocalNotificationsPlugin>(),
    getIt<FirebaseMessaging>(),
  );

  await notificationBloc.initalize();

  FirebaseMessaging.onBackgroundMessage(
      notificationBloc.backgroundMessageHandler);

  runApp(AppWidget(notificationBloc: notificationBloc));
}
