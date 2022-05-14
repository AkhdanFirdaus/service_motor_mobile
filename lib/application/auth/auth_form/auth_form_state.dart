part of 'auth_form_bloc.dart';

@freezed
class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _LoginFormState;

  factory AuthFormState.initial() => AuthFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
