import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_motor_mobile/application/main_layout_menu/main_layout_menu_cubit.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class ReparationPage extends StatelessWidget {
  const ReparationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ListTile(
              title: const Text("Reparasi"),
              subtitle: const Text("Tentukan tanggal dan lokasi servismu"),
              trailing: IconButton(
                onPressed: () {
                  context.router.push(const NotificationRoute());
                },
                icon: const Icon(Icons.notifications),
              ),
            ),
            const Divider(height: 16),
            const Text('Tanggal Servis'),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Tanggal'),
                      DropdownButton<int>(
                        value: 0,
                        isExpanded: true,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: [
                          for (int i = 0; i < 4; i++)
                            DropdownMenuItem(
                              value: i,
                              child: Text('$i'),
                            ),
                        ],
                        onChanged: (newValue) {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Bulan'),
                      DropdownButton<int>(
                        value: 0,
                        isExpanded: true,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: [
                          for (int i = 0; i < 4; i++)
                            DropdownMenuItem(
                              value: i,
                              child: Text('$i'),
                            ),
                        ],
                        onChanged: (newValue) {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Tahun'),
                      DropdownButton<int>(
                        value: 0,
                        isExpanded: true,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: [
                          for (int i = 0; i < 4; i++)
                            DropdownMenuItem(
                              value: i,
                              child: Text('$i'),
                            ),
                        ],
                        onChanged: (newValue) {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
            const SizedBox(height: 16),
            const Text('Lokasi Servis Terdekat'),
            DropdownButton<int>(
              value: 0,
              isExpanded: true,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: [
                for (int i = 0; i < 4; i++)
                  DropdownMenuItem(
                    value: i,
                    child: Text('Value $i'),
                  ),
              ],
              onChanged: (newValue) {
                // setState(() {
                //   dropdownvalue = newValue!;
                // });
              },
            ),
            const SizedBox(height: 16),
            FractionallySizedBox(
              widthFactor: 1,
              child: ElevatedButton(
                onPressed: () {
                  context.router.replace(const TicketSuccessRoute());
                },
                child: const Text('Pesan Tiket'),
              ),
            ),
            const SizedBox(height: 16),
            FractionallySizedBox(
              widthFactor: 1,
              child: OutlinedButton(
                onPressed: () {
                  context.read<MainLayoutMenuCubit>().changePage(0);
                },
                child: const Text('Kembali ke Menu Utama'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
