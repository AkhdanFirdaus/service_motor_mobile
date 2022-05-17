import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_motor_mobile/application/main_layout_menu/main_layout_menu_cubit.dart';
import 'package:service_motor_mobile/presentation/core/app_theme.dart';
import 'package:service_motor_mobile/presentation/home/widgets/action_block_widget.dart';
import 'package:service_motor_mobile/presentation/home/widgets/hello_block_widget.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30),
          children: [
            const HelloBlockWidget(),
            const SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width,
              color: AppColor.black,
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Terakhir Reparasi",
                    style: AppFont.subhead2.copyWith(
                      color: AppColor.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "20 Maret 2022",
                    style: AppFont.headline1.copyWith(
                      color: AppColor.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<MainLayoutMenuCubit>().changePage(3);
                    },
                    child: const Text('Lihat Histori'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const ActionBlocWidget(),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Histori Terbaru'),
                  TextButton(
                    onPressed: () {
                      context.read<MainLayoutMenuCubit>().changePage(3);
                    },
                    child: const Text('Lihat Semua'),
                  ),
                ],
              ),
            ),
            for (int i = 0; i < 3; i++)
              ListTile(
                onTap: () {},
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 8,
                ),
                leading: const CircleAvatar(
                  backgroundColor: AppColor.orange,
                  child: Text(
                    'A',
                    style: TextStyle(color: AppColor.white),
                  ),
                ),
                title: Text('AHASS $i'),
                subtitle: Text('27 Maret 202$i'),
                trailing: Text(
                  'Rp. ${i}45.000',
                  style: const TextStyle(color: Colors.red),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
