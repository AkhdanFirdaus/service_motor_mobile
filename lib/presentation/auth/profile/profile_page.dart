import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: const [
                        Text("Cek Lokasi"),
                        Text("Cari tempat service terdekat dari posisimu"),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Divider(),
              const SizedBox(height: 8),
              const CircleAvatar(
                radius: 100,
              ),
              const SizedBox(height: 8),
              const Text('Nama Lengkap'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Nama Lengkap',
                ),
              ),
              const SizedBox(height: 8),
              const Text('No. HP'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'No. HP',
                ),
              ),
              const SizedBox(height: 8),
              const Text('Email/Username'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email atau Username',
                ),
              ),
              const SizedBox(height: 8),
              const Text('Kata Sandi'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Kata Sandi',
                ),
              ),
              const SizedBox(height: 8),
              const Text('Alamat'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Alamat',
                ),
              ),
              const SizedBox(height: 8),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Ubah Profil'),
                ),
              ),
              const SizedBox(height: 8),
              FractionallySizedBox(
                widthFactor: 1,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Kembali ke Menu Utama'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}