import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/core/app_theme.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class TicketSuccessPage extends StatelessWidget {
  const TicketSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: -100,
              right: -60,
              child: Image.asset('assets/other/gear.png'),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Pesan Tiket Berhasil',
                    style: AppFont.headline3,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Jangan lupa datang tepat waktu, ya!',
                    style:
                        AppFont.subhead3.copyWith(color: AppColor.greyOrange),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  const Chip(
                    backgroundColor: AppColor.orange,
                    label: Text(
                      'Kode Tiket: 18239172389',
                      style: TextStyle(color: AppColor.white),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SizedBox(
                    width: 200,
                    height: 200,
                    child: Placeholder(),
                  ),
                  const SizedBox(height: 30),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Unduh Tiket'),
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
          ],
        ),
      ),
    );
  }
}
