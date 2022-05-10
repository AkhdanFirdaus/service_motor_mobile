import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class TicketSuccessPage extends StatelessWidget {
  const TicketSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Pesan Tiket Berhasil'),
              const Text('Jangan lupa datang tepat waktu, ya!'),
              const SizedBox(height: 8),
              const SizedBox(
                width: 200,
                height: 200,
                child: Placeholder(),
              ),
              const SizedBox(height: 8),
              FractionallySizedBox(
                widthFactor: 1,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Unduh Tiket'),
                ),
              ),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
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
