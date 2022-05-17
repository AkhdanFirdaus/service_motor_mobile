import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/core/app_theme.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: ListView(
            padding: const EdgeInsets.all(30),
            children: [
              const Text(
                'Lupa Kata Sandi',
                style: AppFont.headline3,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'Masukkan alamat emailmu untuk mengatur ulang kata sandi baru',
                style: AppFont.paragraph4,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              const Center(
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Placeholder(),
                ),
              ),
              const SizedBox(height: 32),
              const Text('Email/Username'),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Masukkan Email atau Username',
                ),
              ),
              const SizedBox(height: 32),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Kirim'),
                ),
              ),
              const SizedBox(height: 16),
              FractionallySizedBox(
                widthFactor: 1,
                child: OutlinedButton(
                  onPressed: () {
                    context.router.pop();
                  },
                  child: const Text('Kembali ke Menu Utama'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
