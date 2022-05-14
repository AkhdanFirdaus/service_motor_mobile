import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_motor_mobile/application/auth/auth_bloc.dart';
import 'package:service_motor_mobile/application/auth/register_form/register_form_bloc.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterFormWidget> createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(
                    failure.map(
                      cancelledByUser: (_) => 'Cancelled',
                      serverError: (_) => 'Server Error',
                      emailAlreadyInUse: (_) => 'Email already in use',
                      invalidEmailAndPasswordCombination: (_) =>
                          'Invalid email an password combination',
                      unexpected: (_) =>
                          'Unexpected Error Occured. Please Contact Support',
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
            (_) {
              context.router.replace(const AppMainLayoutRoute());
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      buildWhen: (previous, current) =>
          previous.isSubmitting != current.isSubmitting,
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Form(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  const Text(
                    'Daftar',
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    'Buat akun barumu disini',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Center(
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Placeholder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text('Nama Lengkap'),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Masukkan Nama Lengkap',
                    ),
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      context
                          .read<RegisterFormBloc>()
                          .add(RegisterFormEvent.fullnameChanged(value));
                    },
                    validator: (_) {
                      return context
                          .read<RegisterFormBloc>()
                          .state
                          .fullname
                          .value
                          .fold(
                            (l) => l.maybeMap(
                              shortPassword: (_) => 'Invalid Fullname',
                              orElse: () => null,
                            ),
                            (r) => null,
                          );
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text('No. HP'),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Masukkan No. HP',
                    ),
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      context
                          .read<RegisterFormBloc>()
                          .add(RegisterFormEvent.phoneChanged(value));
                    },
                    validator: (_) {
                      return context
                          .read<RegisterFormBloc>()
                          .state
                          .phone
                          .value
                          .fold(
                            (l) => l.maybeMap(
                              shortPassword: (_) => 'Invalid Phone',
                              orElse: () => null,
                            ),
                            (r) => null,
                          );
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text('Alamat'),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Masukkan Alamat',
                    ),
                    maxLines: null,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      context
                          .read<RegisterFormBloc>()
                          .add(RegisterFormEvent.addressChanged(value));
                    },
                    validator: (_) {
                      return context
                          .read<RegisterFormBloc>()
                          .state
                          .address
                          .value
                          .fold(
                            (l) => l.maybeMap(
                              shortPassword: (_) => 'Invalid Address',
                              orElse: () => null,
                            ),
                            (r) => null,
                          );
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text('Email/Username'),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Masukkan Email',
                    ),
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      context
                          .read<RegisterFormBloc>()
                          .add(RegisterFormEvent.emailChanged(value));
                    },
                    validator: (_) {
                      return context
                          .read<RegisterFormBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                            (l) => l.maybeMap(
                              shortPassword: (_) => 'Invalid Email Address',
                              orElse: () => null,
                            ),
                            (r) => null,
                          );
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text('Kata Sandi'),
                  TextFormField(
                    obscureText: isObsecure,
                    decoration: InputDecoration(
                      hintText: 'Masukkan Kata Sandi',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObsecure = !isObsecure;
                          });
                        },
                        icon: Icon(
                          isObsecure ? Icons.lock : Icons.lock_open,
                        ),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      context
                          .read<RegisterFormBloc>()
                          .add(RegisterFormEvent.passwordChanged(value));
                    },
                    validator: (_) {
                      return context
                          .read<RegisterFormBloc>()
                          .state
                          .password
                          .value
                          .fold(
                            (l) => l.maybeMap(
                              shortPassword: (_) => 'Invalid Password',
                              orElse: () => null,
                            ),
                            (r) => null,
                          );
                    },
                  ),
                  const SizedBox(height: 16),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<RegisterFormBloc>().add(
                            const RegisterFormEvent
                                .registerWithEmailAndPasswordPressed());
                      },
                      child: const Text('Daftar'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: TextButton(
                      onPressed: () {
                        context.router.replace(const LoginRoute());
                      },
                      child: RichText(
                        text: const TextSpan(
                          text: 'Sudah memiliki akun?',
                          style: TextStyle(color: Colors.blue),
                          children: [
                            TextSpan(
                              text: ' Masuk',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (state.isSubmitting) ...[
                    const SizedBox(height: 8),
                    const LinearProgressIndicator(),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
