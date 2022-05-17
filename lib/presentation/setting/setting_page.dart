import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_motor_mobile/application/auth/auth_bloc.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

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
              title: const Text("Pengaturan"),
              subtitle: const Text("Ubah pengaturan aplikasimu"),
              trailing: IconButton(
                onPressed: () {
                  context.router.push(const NotificationRoute());
                },
                icon: const Icon(Icons.notifications),
              ),
            ),
            const Divider(height: 16),
            const SizedBox(height: 16),
            ListTile(
              onTap: () {
                context.router.push(const ProfileRoute());
              },
              leading: const Icon(Icons.settings),
              title: const Text("Pengaturan Akun"),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.account_circle),
              title: const Text("Ketentuan Privasi Pengguna"),
            ),
            ListTile(
              onTap: () {
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
              },
              leading: const Icon(Icons.exit_to_app, color: Colors.red),
              title: const Text(
                "Keluar",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
