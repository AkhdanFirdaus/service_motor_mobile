import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

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
                onPressed: () {
                  context.router.push(const NotificationRoute());
                },
                icon: const Icon(Icons.notifications),
              ),
            ),
            const Divider(height: 16),
            const SizedBox(height: 16),
            for (int i = 0; i < 3; i++) ...[
              Text('Bulan ke $i'),
              for (int i = 0; i < 3; i++)
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(8),
                    child: ListTile(
                      onTap: () {
                        context.router.push(const HistoryDetailRoute());
                      },
                      title: Text('AHASS $i'),
                      subtitle: Text('27 Maret 202$i'),
                      trailing: Text(
                        'Rp. ${i}45.000',
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                ),
            ],
          ],
        ),
      ),
    );
  }
}