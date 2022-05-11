import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class TicketDetailPage extends StatelessWidget {
  const TicketDetailPage({Key? key}) : super(key: key);

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
            FractionallySizedBox(
              widthFactor: 1,
              child: ElevatedButton(
                onPressed: () {
                  context.router.push(const TicketChatRoute());
                },
                child: const Text('Hubungi Admin'),
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
    );
  }
}
