import 'package:dartz/dartz.dart';
import 'package:service_motor_mobile/domain/auth/app_user.dart';
import 'package:service_motor_mobile/domain/auth/app_user_failure.dart';
import 'package:service_motor_mobile/domain/auth/auth_failure.dart';
import 'package:service_motor_mobile/domain/core/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
  Future<Option<AppUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> storeGoogleUser();
  Stream<Either<AppUserFailure, AppUser>> watchUserProfile();
}
