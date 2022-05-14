import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:service_motor_mobile/application/auth/auth_bloc.dart';
import 'package:service_motor_mobile/application/auth/login_form/login_form_bloc.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  bool isTechnician = false;
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginFormBloc, LoginFormState>(
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
              context.router.replace(const MainLayoutRoute());
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
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  const Text(
                    'Masuk',
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    'Mulai Pengalaman Reparasi Motor yang cepat dan efektif',
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
                  const Text('Email/Username'),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Masukkan Email atau Username',
                    ),
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      context
                          .read<LoginFormBloc>()
                          .add(LoginFormEvent.emailChanged(value));
                    },
                    validator: (_) {
                      return context
                          .read<LoginFormBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                            (l) => l.maybeMap(
                              invalidEmail: (_) => 'Invalid Email',
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
                    autocorrect: false,
                    onChanged: (value) {
                      context
                          .read<LoginFormBloc>()
                          .add(LoginFormEvent.passwordChanged(value));
                    },
                    validator: (_) {
                      return context
                          .read<LoginFormBloc>()
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
                  CheckboxListTile(
                    value: isTechnician,
                    onChanged: (value) {
                      setState(() {
                        isTechnician = !isTechnician;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text('Masuk Sebagai Teknisi'),
                  ),
                  const SizedBox(height: 16),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<LoginFormBloc>().add(const LoginFormEvent
                            .loginWithEmailAndPasswordPressed());
                      },
                      child: const Text('Masuk'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: OutlinedButton.icon(
                      onPressed: () {
                        context
                            .read<LoginFormBloc>()
                            .add(const LoginFormEvent.loginWithGooglePressed());
                      },
                      icon: const FaIcon(FontAwesomeIcons.google),
                      label: const Text('Masuk dengan Google'),
                    ),
                  ),
                  if (state.isSubmitting) ...[
                    const SizedBox(height: 8),
                    const LinearProgressIndicator(),
                  ],
                  const SizedBox(height: 16),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: TextButton(
                      onPressed: () {
                        context.router.push(const ForgotRoute());
                      },
                      child: const Text('Lupa Kata Sandi'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: TextButton(
                      onPressed: () {
                        context.router.replace(const RegisterRoute());
                      },
                      child: RichText(
                        text: const TextSpan(
                          text: 'Belum memiliki akun?',
                          style: TextStyle(color: Colors.blue),
                          children: [
                            TextSpan(
                              text: ' Daftar',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
