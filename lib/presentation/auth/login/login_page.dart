import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
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
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Masukkan Kata Sandi',
                ),
              ),
              const Text('Kata Sandi'),
              const SizedBox(height: 16),
              CheckboxListTile(
                value: false,
                onChanged: (value) {},
                title: const Text('Masuk Sebagai Teknisi'),
              ),
              const SizedBox(height: 16),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {
                    context.router.replace(const MainLayoutRoute());
                  },
                  child: const Text('Masuk'),
                ),
              ),
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
  }
}
