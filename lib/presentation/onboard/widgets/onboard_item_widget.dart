import 'package:flutter/material.dart';

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
          color: Colors.grey.shade400,
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
            padding: const EdgeInsets.all(16),
            child: Column(
              children: const [
                Text('Anti Ribet'),
                Text(
                    'Mulai hari ini, kamu bisa hemat\nwaktu untuk lama-lama mengantri\nhanya lewat satu klik!'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
