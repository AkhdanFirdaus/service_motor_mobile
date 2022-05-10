import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ListTile(
              leading: BackButton(
                onPressed: () {
                  context.router.pop();
                },
              ),
              title: const Text("Notifikasi"),
              subtitle: const Text("Lihat Info Terbaru"),
            ),
            const Divider(height: 16),
            const SizedBox(height: 16),
            for (int i = 0; i < 2; i++) ...[
              Text('27 Marit 202$i'),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(8),
                  child: ListTile(
                    onTap: () {
                      context.router.push(const HistoryDetailRoute());
                    },
                    title: const Text('Urutan Antrian'),
                    subtitle: const Text('Sebentar lagi giliranmu!'),
                    trailing: const Text('Saat ini: #14'),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(8),
                  child: ListTile(
                    onTap: () {
                      context.router.push(const HistoryDetailRoute());
                    },
                    title: const Text('Servis di AHASS Cibiru'),
                    subtitle: const Text('#NPR23524'),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Lihat Lokasi'),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(8),
                  child: ListTile(
                    onTap: () {
                      context.router.push(const HistoryDetailRoute());
                    },
                    title: const Text('Pembayaran Belum Selesai'),
                    subtitle: const Text('#NPR23524'),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      child: const Text('Bayar'),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(8),
                  child: ListTile(
                    onTap: () {
                      context.router.push(const HistoryDetailRoute());
                    },
                    title: const Text('Pembayaran Selesai'),
                    subtitle: const Text('#NPR23524'),
                    trailing: const Text(
                      'Rp. 270.000',
                      style: TextStyle(color: Colors.green),
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
