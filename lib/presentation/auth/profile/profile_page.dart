import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              ListTile(
                title: const Text("Cek Lokasi"),
                subtitle:
                    const Text("Cari tempat service terdekat dari posisimu"),
                trailing: IconButton(
                  onPressed: () {
                    context.router.push(const NotificationRoute());
                  },
                  icon: const Icon(Icons.notifications),
                ),
              ),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),
              const CircleAvatar(radius: 50),
              const SizedBox(height: 16),
              const Text('Nama Lengkap'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Nama Lengkap',
                ),
              ),
              const SizedBox(height: 16),
              const Text('No. HP'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'No. HP',
                ),
              ),
              const SizedBox(height: 16),
              const Text('Email/Username'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email atau Username',
                ),
              ),
              const SizedBox(height: 16),
              const Text('Kata Sandi'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Kata Sandi',
                ),
              ),
              const SizedBox(height: 16),
              const Text('Alamat'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Alamat',
                ),
              ),
              const SizedBox(height: 16),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Ubah Profil'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
