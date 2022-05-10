import 'package:flutter/material.dart';

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
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Masukkan Kata Sandi',
                ),
              ),
              const Text('Kata Sandi'),
              const SizedBox(height: 8),
              const SizedBox(height: 8),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Daftar'),
                ),
              ),
              const SizedBox(height: 8),
              FractionallySizedBox(
                widthFactor: 1,
                child: TextButton(
                  onPressed: () {},
                  child: RichText(
                    text: TextSpan(
                      text: 'Sudah memiliki akun?',
                      style: DefaultTextStyle.of(context)
                          .style
                          .copyWith(color: Theme.of(context).primaryColor),
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
