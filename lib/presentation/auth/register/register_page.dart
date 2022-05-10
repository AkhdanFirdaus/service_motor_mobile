import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text('Daftar'),
              const Text('Buat akun barumu disini'),
              const SizedBox(height: 8),
              const Placeholder(
                fallbackWidth: 300,
                fallbackHeight: 300,
              ),
              const SizedBox(height: 8),
              const Text('Nama Lengkap'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Masukkan Nama Lengkap',
                ),
              ),
              const SizedBox(height: 8),
              const Text('No. HP'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Masukkan No. HP',
                ),
              ),
              const SizedBox(height: 8),
              const Text('Email/Username'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Masukkan Email atau Username',
                ),
              ),
              const SizedBox(height: 8),
              const Text('Kata Sandi'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Masukkan Kata Sandi',
                ),
              ),
              const SizedBox(height: 8),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {
                    context.router.replace(const RegisterSuccesRoute());
                  },
                  child: const Text('Daftar'),
                ),
              ),
              const SizedBox(height: 8),
              FractionallySizedBox(
                widthFactor: 1,
                child: TextButton(
                  onPressed: () {
                    context.router.replace(const LoginRoute());
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Sudah memiliki akun?',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Colors.blue),
                      children: const [
                        TextSpan(text: ' Masuk'),
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
  }
}
