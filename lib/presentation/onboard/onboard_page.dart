import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/core/app_theme.dart';
import 'package:service_motor_mobile/presentation/onboard/widgets/onboard_item_widget.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  late PageController pageController;

  final Map<String, String> onboardMenu = {
    'Anti Ribet':
        'Mulai hari ini, kamu bisa hemat waktu untuk lama-lama mengantri hanya lewat satu klik!',
    'Real-Time':
        'Sering bingung berapa lama lagi proses reparasi selesai? Tenang, notifikasi real-time jadi solusimu!',
    'Cepat & Efektif':
        'Sudah siap untuk mendapatkan pengalaman reparasi yang cepat dan efektif? Yuk klik tombol di bawah!',
  };

  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: onboardMenu.length,
                itemBuilder: (context, index) {
                  final menu = onboardMenu.entries.elementAt(index);
                  return OnboardItemWidget(
                    title: menu.key,
                    description: menu.value,
                  );
                },
              ),
            ),
            Container(
              color: AppColor.white,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 150),
                // transitionBuilder: (child, animation) => ScaleTransition(
                //   scale: animation,
                //   child: child,
                // ),
                child: currentIndex == 2
                    ? Padding(
                        key: const ValueKey('getstarted'),
                        padding: const EdgeInsets.all(30),
                        child: FractionallySizedBox(
                          widthFactor: 1,
                          child: ElevatedButton(
                            onPressed: () {
                              context.router.push(const LoginRoute());
                            },
                            child: const Text('Mulai'),
                          ),
                        ),
                      )
                    : Padding(
                        key: const ValueKey('indicator'),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 40,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < 3; i++)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 8,
                                  backgroundColor:
                                      i == currentIndex ? null : Colors.grey,
                                ),
                              ),
                          ],
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
