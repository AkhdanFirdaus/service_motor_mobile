// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_messaging/firebase_messaging.dart' as _i5;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i18;
import 'application/auth/login_form/login_form_bloc.dart' as _i12;
import 'application/auth/register_form/register_form_bloc.dart' as _i15;
import 'application/auth/user_profile/user_profile_bloc.dart' as _i16;
import 'application/auth/user_profile_form/user_profile_form_bloc.dart' as _i17;
import 'application/chat_form/chat_form_bloc.dart' as _i19;
import 'application/chat_watcher/chat_watcher_bloc.dart' as _i20;
import 'application/main_layout_menu/main_layout_menu_cubit.dart' as _i13;
import 'application/notification/notification_bloc.dart' as _i14;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/chat/i_chat_facade.dart' as _i10;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/chat/chat_repository.dart' as _i11;
import 'infrastructure/core/firebase_injection_module.dart'
    as _i21; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseMessaging>(
      () => firebaseInjectableModule.firebaseMessaging);
  gh.lazySingleton<_i6.FlutterLocalNotificationsPlugin>(
      () => firebaseInjectableModule.flutterLocalNotificationPlugin);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(),
      get<_i7.GoogleSignIn>(),
      get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.IChatFacade>(
      () => _i11.ChatRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i12.LoginFormBloc>(
      () => _i12.LoginFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i13.MainLayoutMenuCubit>(() => _i13.MainLayoutMenuCubit());
  gh.factory<_i14.NotificationBloc>(() => _i14.NotificationBloc(
      get<_i6.FlutterLocalNotificationsPlugin>(),
      get<_i5.FirebaseMessaging>()));
  gh.factory<_i15.RegisterFormBloc>(
      () => _i15.RegisterFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i16.UserProfileBloc>(
      () => _i16.UserProfileBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i17.UserProfileFormBloc>(
      () => _i17.UserProfileFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i19.ChatFormBloc>(
      () => _i19.ChatFormBloc(get<_i10.IChatFacade>()));
  gh.factory<_i20.ChatWatcherBloc>(
      () => _i20.ChatWatcherBloc(get<_i10.IChatFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i21.FirebaseInjectableModule {}
