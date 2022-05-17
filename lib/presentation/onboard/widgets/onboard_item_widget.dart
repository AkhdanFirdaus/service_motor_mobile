import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/core/app_theme.dart';

class OnboardItemWidget extends StatelessWidget {
  const OnboardItemWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.6,
          padding: const EdgeInsets.all(30),
          child: const Center(
            child: SizedBox(
              height: 200,
              width: 200,
              child: Placeholder(),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: AppFont.headline3,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  description,
                  style: AppFont.paragraph4.copyWith(
                    color: AppColor.greyOrange,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
