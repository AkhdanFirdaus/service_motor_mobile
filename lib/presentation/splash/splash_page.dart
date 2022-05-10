import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: const [
              Align(
                alignment: Alignment.center,
                child: Placeholder(
                  fallbackHeight: 300,
                  fallbackWidth: 300,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text("(Versi Aplikasi)"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
