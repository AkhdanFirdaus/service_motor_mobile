import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class TicketActivePage extends StatelessWidget {
  const TicketActivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ListTile(
              leading: const CircleAvatar(),
              title: const Text("History Page"),
              subtitle: const Text("Menampilkan histori setiap kali service"),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
            ),
            const Divider(height: 16),
            const SizedBox(height: 16),
            const Text('Bulan April'),
            for (int i = 0; i < 2; i++)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(8),
                  child: ListTile(
                    title: Text('AHASS $i'),
                    subtitle: Text('27 Maret 202$i'),
                    trailing: ElevatedButton(
                      onPressed: () {
                        context.router.push(const TicketDetailRoute());
                      },
                      child: const Text('Lihat'),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
