import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/onboard/widgets/onboard_item_widget.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return OnboardItemWidget(
                    title: 'Title $index',
                    description: 'Description ke $index',
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: const [
                  CircleAvatar(radius: 12),
                  CircleAvatar(radius: 12),
                  CircleAvatar(radius: 12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
