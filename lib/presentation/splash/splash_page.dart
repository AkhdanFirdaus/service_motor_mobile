import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_motor_mobile/application/auth/auth_bloc.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        Future.delayed(const Duration(seconds: 1)).whenComplete(() {
          state.map(
            initial: (_) {},
            authenticated: (_) {
              context.router.push(const AppMainLayoutRoute());
            },
            unauthenticated: (_) {
              context.router.push(const OnboardRoute());
            },
          );
        });
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.grey.shade400,
                    child: const Placeholder(),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("(Versi Aplikasi)"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
