import 'package:flutter/material.dart';

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
              const Text('Masuk'),
              const Text(
                  'Mulai Pengalaman Reparasi Motor yang cepat dan efektif'),
              const SizedBox(height: 8),
              const Placeholder(
                fallbackWidth: 300,
                fallbackHeight: 300,
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
              CheckboxListTile(
                value: false,
                onChanged: (value) {},
                title: const Text('Masuk Sebagai Teknisi'),
              ),
              const SizedBox(height: 8),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Masuk'),
                ),
              ),
              FractionallySizedBox(
                widthFactor: 1,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Lupa Kata Sandi'),
                ),
              ),
              const SizedBox(height: 8),
              FractionallySizedBox(
                widthFactor: 1,
                child: TextButton(
                  onPressed: () {},
                  child: RichText(
                    text: TextSpan(
                      text: 'Belum memiliki akun?',
                      style: DefaultTextStyle.of(context)
                          .style
                          .copyWith(color: Theme.of(context).primaryColor),
                      children: const [
                        TextSpan(text: ' Daftar'),
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
