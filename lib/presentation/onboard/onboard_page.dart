import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/core/app_theme.dart';
import 'package:service_motor_mobile/presentation/onboard/widgets/onboard_item_widget.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class MenuClass {
  final String title;
  final String description;
  final String image;

  MenuClass({
    required this.title,
    required this.description,
    required this.image,
  });
}

final List<MenuClass> onboardMenu = [
  MenuClass(
    title: 'Anti Ribet',
    description:
        'Mulai hari ini, kamu bisa hemat waktu untuk lama-lama mengantri hanya lewat satu klik!',
    image: 'assets/illustrations/board-1.png',
  ),
  MenuClass(
    title: 'Real-Time',
    description:
        'Sering bingung berapa lama lagi proses reparasi selesai? Tenang, notifikasi real-time jadi solusimu!',
    image: 'assets/illustrations/board-2.png',
  ),
  MenuClass(
    title: 'Cepat & Efektif',
    description:
        'Sudah siap untuk mendapatkan pengalaman reparasi yang cepat dan efektif? Yuk klik tombol di bawah!',
    image: 'assets/illustrations/board-3.png',
  ),
];

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  late PageController pageController;

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
            ButtonBar(
              children: [
                if (currentIndex != 2)
                  TextButton(
                    onPressed: () {
                      context.router.replace(const LoginRoute());
                    },
                    child: const Text('Skip'),
                  ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: onboardMenu.length,
                itemBuilder: (context, index) {
                  final menu = onboardMenu[index];
                  return OnboardItemWidget(
                    title: menu.title,
                    description: menu.description,
                    image: menu.image,
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
                              context.router.replace(const LoginRoute());
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
