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
              ),
              const SizedBox(height: 16),
              const Text('No. HP'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Masukkan No. HP',
                ),
              ),
              const SizedBox(height: 16),
              const Text('Email/Username'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Masukkan Email atau Username',
                ),
              ),
              const SizedBox(height: 16),
              const Text('Kata Sandi'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Masukkan Kata Sandi',
                ),
              ),
              const SizedBox(height: 16),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {
                    context.router.replace(const RegisterSuccesRoute());
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
            ],
          ),
        ),
      ),
    );
  }
}
