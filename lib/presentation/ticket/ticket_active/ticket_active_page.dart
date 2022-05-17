import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/core/app_theme.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class TicketActivePage extends StatelessWidget {
  const TicketActivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: -100,
              right: -60,
              child: Image.asset('assets/other/gear.png'),
            ),
            ListView(
              padding: const EdgeInsets.all(30),
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text(
                    "Tiket Aktif",
                    style: AppFont.headline2,
                  ),
                  subtitle: Text(
                    "Menampilkan tiket servis yang aktif",
                    style:
                        AppFont.subhead3.copyWith(color: AppColor.greyOrange),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: AppColor.orange,
                    child: IconButton(
                      color: AppColor.white,
                      onPressed: () {
                        context.router.push(const NotificationRoute());
                      },
                      icon: const Icon(Icons.notifications),
                    ),
                  ),
                ),
                const Divider(height: 16),
                const SizedBox(height: 30),
                const Text('Bulan April'),
                for (int i = 0; i < 2; i++)
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    leading: const CircleAvatar(
                      backgroundColor: AppColor.orange,
                      child: Text(
                        'A',
                        style: TextStyle(color: AppColor.white),
                      ),
                    ),
                    title: Text('AHASS $i'),
                    subtitle: Text('27 Maret 202$i'),
                    trailing: ElevatedButton(
                      onPressed: () {
                        context.router.push(const TicketDetailRoute());
                      },
                      child: const Text('Lihat'),
                    ),
                  ),
                const SizedBox(height: 16),
                const Text('Bulan April'),
                for (int i = 0; i < 2; i++)
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    leading: const CircleAvatar(
                      backgroundColor: AppColor.orange,
                      child: Text(
                        'A',
                        style: TextStyle(color: AppColor.white),
                      ),
                    ),
                    title: Text('AHASS $i'),
                    subtitle: Text('27 Maret 202$i'),
                    trailing: ElevatedButton(
                      onPressed: () {
                        context.router.push(const TicketDetailRoute());
                      },
                      child: const Text('Lihat'),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
