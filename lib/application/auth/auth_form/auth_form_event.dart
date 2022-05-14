part of 'auth_form_bloc.dart';

@freezed
class AuthFormEvent with _$AuthFormEvent {
  const factory AuthFormEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory AuthFormEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;
  const factory AuthFormEvent.loginWithEmailAndPasswordPressed() =
      _LoginWithEmailAndPasswordPressed;
  const factory AuthFormEvent.registerWithEmailAndPasswordPressed() =
      _RegisterWithEmailAndPasswordPressed;
  const factory AuthFormEvent.loginWithGooglePressed() =
      _LoginWithGooglePressed;
}
