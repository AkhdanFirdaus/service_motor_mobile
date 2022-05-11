import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              leading: const CircleAvatar(),
              title: const Text("Hi, Ilham"),
              subtitle: const Text("Selamat Pagi!"),
              trailing: IconButton(
                onPressed: () {
                  context.router.push(const NotificationRoute());
                },
                icon: const Icon(Icons.notifications),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Terakhir Reparasi"),
                  const SizedBox(height: 8),
                  const Text("20 Maret 2022"),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Lihat Histori'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              children: [
                InkWell(
                  onTap: () {
                    context.router.push(const ReparationRoute());
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.grey,
                        child: const Icon(
                          Icons.auto_fix_high,
                          color: Colors.white,
                        ),
                      ),
                      const Text('Reparasi'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.router.push(const TicketActiveRoute());
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.grey,
                        child: const Icon(
                          Icons.airplane_ticket,
                          color: Colors.white,
                        ),
                      ),
                      const Text('Tiket Aktif'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.router.push(const LocationRoute());
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.grey,
                        child: const Icon(
                          Icons.map_outlined,
                          color: Colors.white,
                        ),
                      ),
                      const Text('Cek Lokasi'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.router.push(const SettingRoute());
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.grey,
                        child: const Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ),
                      const Text('Pengaturan'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Histori Terbaru'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Lihat Semua'),
                  ),
                ],
              ),
            ),
            for (int i = 0; i < 3; i++)
              Container(
                margin: const EdgeInsets.all(16),
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(8),
                  child: ListTile(
                    onTap: () {},
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
        ),
      ),
    );
  }
}
