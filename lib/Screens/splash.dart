import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food/config/app_routes.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 10), () {
      Navigator.pushNamed(context, AppRoutes.login);
    });
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (width == 130) {
          setState(() {
            width = 150;
            height = 180;
          });
        } else {
          setState(() {
            width = 130;
            height = 154;
          });
        }
      },
    );
    super.initState();
  }

  double width = 130;
  double height = 154;
  late Timer timer;
  @override
  dispose() {
    timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        Center(
          child: AnimatedContainer(
            width: width,
            height: height,
            duration: const Duration(seconds: 1),
            child: Image.asset(
              "assets/images/Logo.png",
            ),
          ),
        ),
        const Positioned(
          right: 0,
          left: 0,
          bottom: 85,
          child: Center(
            child: Text(
              "Richdiets 2023",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff187D44),
              ),
            ),
          ),
        ),
      ],
    ));
  }


}