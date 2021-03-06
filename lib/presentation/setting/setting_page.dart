import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_motor_mobile/application/auth/auth_bloc.dart';
import 'package:service_motor_mobile/presentation/core/app_theme.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

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
                    "Pengaturan",
                    style: AppFont.headline2,
                  ),
                  subtitle: Text(
                    "Ubah pengaturan aplikasimu",
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
                const Divider(),
                const SizedBox(height: 16),
                ListTile(
                  onTap: () {
                    context.router.pop();
                  },
                  contentPadding: const EdgeInsets.symmetric(vertical: 8),
                  leading: const Icon(
                    Icons.arrow_back,
                    color: AppColor.orange,
                  ),
                  title: const Text("Kembali ke Menu Utama"),
                ),
                ListTile(
                  onTap: () {
                    context.router.push(const ProfileRoute());
                  },
                  contentPadding: const EdgeInsets.symmetric(vertical: 8),
                  leading: const Icon(
                    Icons.settings,
                    color: AppColor.orange,
                  ),
                  title: const Text("Pengaturan Akun"),
                ),
                ListTile(
                  onTap: () {},
                  contentPadding: const EdgeInsets.symmetric(vertical: 8),
                  leading: const Icon(
                    Icons.account_circle,
                    color: AppColor.orange,
                  ),
                  title: const Text("Ketentuan Privasi Pengguna"),
                ),
                ListTile(
                  onTap: () {
                    context.read<AuthBloc>().add(const AuthEvent.signedOut());
                  },
                  contentPadding: const EdgeInsets.symmetric(vertical: 8),
                  leading: const Icon(
                    Icons.exit_to_app,
                    color: Colors.red,
                  ),
                  title: const Text(
                    "Keluar",
                    style: TextStyle(color: Colors.red),
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
