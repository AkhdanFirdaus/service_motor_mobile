import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            ListTile(
              leading: BackButton(
                onPressed: () {
                  context.router.pop();
                },
              ),
              title: const Text("Cek Lokasi"),
              subtitle: const Text("Cari tempat servis terdekat dari posisimu"),
              trailing: IconButton(
                onPressed: () {
                  context.router.push(const NotificationRoute());
                },
                icon: const Icon(Icons.notifications),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
                child: const Center(
                  child: Icon(Icons.map, size: 24),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Lokasi Saat Ini'),
                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: 'Jl. A.H. Nasution'),
                  ),
                  const SizedBox(height: 16),
                  const Text('Tempat Servis Terdekat'),
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
                      onPressed: () {},
                      child: const Text('Arahkan'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
