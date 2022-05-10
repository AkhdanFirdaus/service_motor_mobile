import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              ListTile(
                leading: BackButton(
                  onPressed: () {
                    context.router.pop();
                  },
                ),
              ),
              const SizedBox(height: 8),
              const Text('Lupa Kata Sandi'),
              const Text(
                  'Masukkan emailmu untuk mengatur ulang kata sandi baru'),
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
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Kirim'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
