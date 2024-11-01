import 'package:flutter/material.dart';
import 'package:food/Screens/forget_password.dart';
import 'package:food/Screens/login_screen.dart';
import 'package:food/Screens/navigation_bar.dart';
import 'package:food/Screens/order.dart';
import 'package:food/Screens/plans.dart';
import 'package:food/Screens/profile.dart';
import 'package:food/Screens/register.dart';
import 'package:food/Screens/splash.dart';
import 'package:food/config/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        AppRoutes.plans: (context) => const Plans(),
        AppRoutes.register: (context) => const Register(),
        AppRoutes.forgetPassword: (context) => const ForgetPassword(),
        AppRoutes.order: (context) => const Order(),
        AppRoutes.profile: (context) => const Profile(),
        AppRoutes.login: (context) => const LoginScreen(),
        AppRoutes.mainPage: (context) => const CustomNavigationBar()
      },
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const SplashScreen(),
    );
  }
}
