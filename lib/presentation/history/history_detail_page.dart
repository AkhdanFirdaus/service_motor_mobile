import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class HistoryDetailPage extends StatelessWidget {
  const HistoryDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text(
              '#NP123JD',
              textAlign: TextAlign.center,
            ),
            const Text(
              'AHASS Soekarno Hatta',
              textAlign: TextAlign.center,
            ),
            const Text(
              '10 Mei 2022',
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
            OutlinedButton(
              onPressed: () {},
              child: const Text('Unduh Tiket'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Catatan',
              textAlign: TextAlign.left,
            ),
            const Text(
              'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            const Text(
              'Detail Reparasi',
              textAlign: TextAlign.left,
            ),
            for (int i = 0; i < 3; i++)
              ListTile(
                leading: const Text('●'),
                title: Text('Benerin ini sejumlah $i'),
              ),
            const SizedBox(height: 16),
            const Text(
              'Total Pembayaran',
              textAlign: TextAlign.left,
            ),
            RichText(
              text: const TextSpan(
                text: 'Rp. 280.000',
                style: TextStyle(color: Colors.red),
                children: [
                  TextSpan(
                    text: ' Sudah dibayar',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
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
    );
  }
}
