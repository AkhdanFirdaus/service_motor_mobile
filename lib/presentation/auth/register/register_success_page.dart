import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class RegisterSuccesPage extends StatelessWidget {
  const RegisterSuccesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text('Pendaftaran Berhasil'),
              const Text('Cek emailmu untuk aktivasi akun'),
              const SizedBox(height: 8),
              const Placeholder(
                fallbackWidth: 300,
                fallbackHeight: 300,
              ),
              const SizedBox(height: 8),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {
                    context.router.replace(const LoginRoute());
                  },
                  child: const Text('Kembali ke menu masuk'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
