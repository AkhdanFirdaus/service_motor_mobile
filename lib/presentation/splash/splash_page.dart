import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).whenComplete(() {
      context.router.push(const OnboardRoute());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.grey.shade400,
                  child: const Placeholder(),
                ),
              ),
              const Align(
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
