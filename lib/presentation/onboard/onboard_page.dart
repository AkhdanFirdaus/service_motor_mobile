import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/onboard/widgets/onboard_item_widget.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  late PageController pageController;

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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return OnboardItemWidget(
                    title: 'Title $index',
                    description: 'Description ke $index',
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Row(
                    children: [
                      for (int i = 0; i < 3; i++)
                        if (pageController.page == 2)
                          ElevatedButton(
                            onPressed: () {
                              context.router.push(const LoginRoute());
                            },
                            child: const Text('Mulai'),
                          )
                        else
                          const CircleAvatar(radius: 12),
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
