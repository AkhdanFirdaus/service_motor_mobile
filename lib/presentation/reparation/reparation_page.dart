import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_motor_mobile/application/main_layout_menu/main_layout_menu_cubit.dart';
import 'package:service_motor_mobile/presentation/core/app_theme.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class ReparationPage extends StatelessWidget {
  const ReparationPage({Key? key}) : super(key: key);

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
                    "Reparasi",
                    style: AppFont.headline2,
                  ),
                  subtitle: Text(
                    "Tentukan tanggal dan lokasi servismu",
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
                const SizedBox(height: 30),
                const Text(
                  'Tanggal Servis',
                  style: AppFont.subhead2,
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Tanggal',
                            style: AppFont.formLabel,
                          ),
                          const SizedBox(height: 8),
                          DropdownButtonFormField2(
                            value: 0,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.zero,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            isExpanded: true,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: AppColor.orange,
                            ),
                            iconSize: 30,
                            buttonHeight: 50,
                            buttonPadding: const EdgeInsets.only(
                              left: 20,
                              right: 10,
                            ),
                            dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            items: [
                              for (int i = 0; i < 31; i++)
                                DropdownMenuItem(
                                  value: i,
                                  child: Text(
                                    '$i',
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                            ],
                            // validator: (value) {
                            //   if (value == null) {
                            //     return 'Please select gender.';
                            //   }
                            // },
                            onChanged: (value) {
                              //Do something when changing the item if you want.
                            },
                            onSaved: (value) {
                              // selectedValue = value.toString();
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Bulan',
                            style: AppFont.formLabel,
                          ),
                          const SizedBox(height: 8),
                          DropdownButtonFormField2(
                            value: 0,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.zero,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            isExpanded: true,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: AppColor.orange,
                            ),
                            iconSize: 30,
                            buttonHeight: 50,
                            buttonPadding: const EdgeInsets.only(
                              left: 20,
                              right: 10,
                            ),
                            dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            items: [
                              for (int i = 0; i < 12; i++)
                                DropdownMenuItem(
                                  value: i,
                                  child: Text(
                                    '0${i + 1}',
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                            ],
                            // validator: (value) {
                            //   if (value == null) {
                            //     return 'Please select gender.';
                            //   }
                            // },
                            onChanged: (value) {
                              //Do something when changing the item if you want.
                            },
                            onSaved: (value) {
                              // selectedValue = value.toString();
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Tahun',
                            style: AppFont.formLabel,
                          ),
                          const SizedBox(height: 8),
                          DropdownButtonFormField2(
                            value: 0,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.zero,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            isExpanded: true,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: AppColor.orange,
                            ),
                            iconSize: 30,
                            buttonHeight: 50,
                            buttonPadding: const EdgeInsets.only(
                              left: 20,
                              right: 10,
                            ),
                            dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            items: [
                              for (int i = 0; i < 4; i++)
                                DropdownMenuItem(
                                  value: i,
                                  child: Text(
                                    '200$i',
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                            ],
                            // validator: (value) {
                            //   if (value == null) {
                            //     return 'Please select gender.';
                            //   }
                            // },
                            onChanged: (value) {
                              //Do something when changing the item if you want.
                            },
                            onSaved: (value) {
                              // selectedValue = value.toString();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  'Lokasi Servis Terdekat',
                  style: AppFont.formLabel,
                ),
                const SizedBox(height: 8),
                DropdownButtonFormField2(
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  isExpanded: true,
                  hint: const Text(
                    'Pilih Lokasi',
                    style: AppFont.paragraph4,
                  ),
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: AppColor.orange,
                  ),
                  iconSize: 30,
                  buttonHeight: 50,
                  buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  items: [
                    for (int i = 0; i < 4; i++)
                      DropdownMenuItem(
                        value: i,
                        child: Text(
                          'Value $i',
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                  ],
                  // validator: (value) {
                  //   if (value == null) {
                  //     return 'Please select gender.';
                  //   }
                  // },
                  onChanged: (value) {
                    //Do something when changing the item if you want.
                  },
                  onSaved: (value) {
                    // selectedValue = value.toString();
                  },
                ),
                const SizedBox(height: 30),
                FractionallySizedBox(
                  widthFactor: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      context.router.push(const TicketSuccessRoute());
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
          ],
        ),
      ),
    );
  }
}
