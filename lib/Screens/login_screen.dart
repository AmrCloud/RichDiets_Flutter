import 'package:flutter/material.dart';
import 'package:food/Custome_Widgets/login_appbar.dart';
import 'package:food/Custome_Widgets/login_button.dart';
import 'package:food/Custome_Widgets/login_row.dart';
import 'package:food/Custome_Widgets/login_textfield.dart';
import 'package:food/Custome_Widgets/login_textrich.dart';
import 'package:food/Custome_Widgets/or_divider.dart';
import 'package:food/Custome_Widgets/text_colum.dart';
import 'package:food/config/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LoginAppbar(),
            const SizedBox(
              height: 11,
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextColum(
                      textOne: 'Welcome Back!',
                      textTwo: 'Have a healthy & Tasty day ahead'),
                  const SizedBox(
                    height: 24,
                  ),
                  const LoginRow(),
                  const SizedBox(
                    height: 35,
                  ),
                  const OrDivider(),
                  const SizedBox(
                    height: 34,
                  ),
                  const LoginTextfield(hintText: 'Email Address'),
                  const SizedBox(
                    height: 16,
                  ),
                  const LoginTextfield(
                    hintText: 'Password',
                    hidden: true,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRoutes.forgetPassword);
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF187D44),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  LoginButton(
                    text: 'Login',
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.mainPage);
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  LoginTextrich(
                    textOne: 'Don’t have an account? ',
                    textTwo: 'Create new one',
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, AppRoutes.register);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
