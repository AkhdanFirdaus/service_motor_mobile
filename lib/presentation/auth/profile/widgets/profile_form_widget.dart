import 'package:flutter/material.dart';
import 'package:service_motor_mobile/domain/auth/app_user.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class ProfileFormWidget extends StatefulWidget {
  const ProfileFormWidget({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final AppUser appUser;

  @override
  State<ProfileFormWidget> createState() => _ProfileFormWidgetState();
}

class _ProfileFormWidgetState extends State<ProfileFormWidget> {
  late TextEditingController fullnameController;
  late TextEditingController emailController;
  late TextEditingController addressController;
  late TextEditingController phoneController;
  late TextEditingController passwordController;

  bool isObsecure = true;

  @override
  void initState() {
    fullnameController = TextEditingController(text: widget.appUser.name);
    emailController = TextEditingController(text: widget.appUser.email);
    addressController = TextEditingController(text: widget.appUser.address);
    phoneController = TextEditingController(text: widget.appUser.phone);
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    fullnameController.dispose();
    emailController.dispose();
    addressController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Form(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            title: const Text("Cek Lokasi"),
            subtitle: const Text("Cari tempat service terdekat dari posisimu"),
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
            controller: fullnameController,
            decoration: const InputDecoration(
              hintText: 'Nama Lengkap',
            ),
          ),
          const SizedBox(height: 16),
          const Text('No. HP'),
          TextFormField(
            controller: phoneController,
            decoration: const InputDecoration(
              hintText: 'No. HP',
            ),
          ),
          const SizedBox(height: 16),
          const Text('Email/Username'),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              hintText: 'Email atau Username',
            ),
          ),
          const SizedBox(height: 16),
          const Text('Kata Sandi'),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              hintText: 'Kata Sandi',
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isObsecure = !isObsecure;
                  });
                },
                icon: Icon(
                  isObsecure ? Icons.lock : Icons.lock_open,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text('Alamat'),
          TextFormField(
            controller: addressController,
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
    );
  }
}
