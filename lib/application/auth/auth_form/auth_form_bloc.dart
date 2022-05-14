import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:service_motor_mobile/domain/auth/auth_failure.dart';
import 'package:service_motor_mobile/domain/auth/i_auth_facade.dart';
import 'package:service_motor_mobile/domain/core/value_objects.dart';

part 'auth_form_event.dart';
part 'auth_form_state.dart';
part 'auth_form_bloc.freezed.dart';

@injectable
class AuthFormBloc extends Bloc<AuthFormEvent, AuthFormState> {
  final IAuthFacade _authFacade;

  AuthFormBloc(this._authFacade) : super(AuthFormState.initial()) {
    on<AuthFormEvent>((event, emit) async {
      await event.map(
        emailChanged: (e) async {
          emit(state.copyWith(
            emailAddress: EmailAddress(e.emailStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        passwordChanged: (e) async {
          emit(state.copyWith(
            password: Password(e.passwordStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        loginWithEmailAndPasswordPressed: (e) async {
          final isEmailValid = state.emailAddress.isValid();
          final isPasswordValid = state.password.isValid();

          if (isEmailValid && isPasswordValid) {
            emit(state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ));

            final failureOrSuccess = await _authFacade.signInWithEmailPassword(
              emailAddress: state.emailAddress,
              password: state.password,
            );

            emit(state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: some(failureOrSuccess),
            ));
          }
          emit(state.copyWith(
            showErrorMessages: true,
            authFailureOrSuccessOption: none(),
          ));
        },
        registerWithEmailAndPasswordPressed: (e) async {
          final isEmailValid = state.emailAddress.isValid();
          final isPasswordValid = state.password.isValid();

          if (isEmailValid && isPasswordValid) {
            emit(state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ));

            final failureOrSuccess =
                await _authFacade.registerWithEmailPassword(
              emailAddress: state.emailAddress,
              password: state.password,
            );

            emit(state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
            ));
          }
          emit(state.copyWith(
            showErrorMessages: true,
            authFailureOrSuccessOption: none(),
          ));
        },
        loginWithGooglePressed: (e) async {
          emit(state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ));

          final failureOrSuccess = await _authFacade.signInWithGoogle();

          emit(state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: some(failureOrSuccess),
          ));
        },
      );
    });
  }
}
