import 'package:flutter/material.dart';
import 'package:food/Custome_Widgets/login_appbar.dart';
import 'package:food/Custome_Widgets/login_button.dart';
import 'package:food/Custome_Widgets/login_textfield.dart';
import 'package:food/Custome_Widgets/text_colum.dart';
import 'package:food/config/app_routes.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
                      textOne: 'Forgot Password',
                      textTwo:
                          'We’ll Send the link to the email you’ll provide below'),
                  const SizedBox(
                    height: 24,
                  ),
                  const LoginTextfield(hintText: 'Email Address'),
                  const SizedBox(
                    height: 24,
                  ),
                  LoginButton(
                      text: 'Send the reset link',
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.login);
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
