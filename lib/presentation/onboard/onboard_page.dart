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
              onTap: () {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
                setState(() {
                  currentIndex++;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Row(
                    children: [
                      if (currentIndex == 2) ...[
                        for (int i = 0; i < 2; i++)
                          const CircleAvatar(radius: 12),
                        ElevatedButton(
                          onPressed: () {
                            context.router.push(const LoginRoute());
                          },
                          child: const Text('Mulai'),
                        )
                      ] else
                        for (int i = 0; i < 3; i++)
                          CircleAvatar(
                            radius: 12,
                            backgroundColor:
                                i == currentIndex ? Colors.blue : Colors.grey,
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
