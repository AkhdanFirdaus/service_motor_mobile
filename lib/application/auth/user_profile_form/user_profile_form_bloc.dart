import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:service_motor_mobile/domain/auth/app_user.dart';
import 'package:service_motor_mobile/domain/auth/auth_failure.dart';
import 'package:service_motor_mobile/domain/auth/auth_value_objects.dart';
import 'package:service_motor_mobile/domain/auth/i_auth_facade.dart';

part 'user_profile_form_event.dart';
part 'user_profile_form_state.dart';
part 'user_profile_form_bloc.freezed.dart';

@injectable
class UserProfileFormBloc
    extends Bloc<UserProfileFormEvent, UserProfileFormState> {
  final IAuthFacade _authFacade;

  UserProfileFormBloc(this._authFacade)
      : super(UserProfileFormState.initial()) {
    on<UserProfileFormEvent>((event, emit) async {
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
        passwordConfirmationChanged: (e) async {
          emit(state.copyWith(
            passwordConfirmation: PasswordConfirmation(
              source: e.passwordConfirmationStr,
              compare: state.password?.value.fold((l) => '', (r) => r) ?? '',
            ),
            authFailureOrSuccessOption: none(),
          ));
        },
        phoneChanged: (e) async {
          emit(state.copyWith(
            phone: Phone(e.phoneStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        addressChanged: (e) async {
          emit(state.copyWith(
            address: Address(e.addressStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        fullnameChanged: (e) async {
          emit(state.copyWith(
            fullname: Fullname(e.fullnameStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        updateProfilePressed: (e) async {
          emit(state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ));

          final failureOrUpdate = await _authFacade.updateProfile(
            emailAddress: state.emailAddress,
            address: state.address,
            fullname: state.fullname,
            phone: state.phone,
            password: state.password,
            passwordConfirmation: state.passwordConfirmation,
          );

          emit(state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: some(failureOrUpdate),
          ));
        },
        started: (e) {
          emit(UserProfileFormState.initialUpdate(e.appUser));
        },
      );
    });
  }
}
