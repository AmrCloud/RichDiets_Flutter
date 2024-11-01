import 'package:flutter/material.dart';
import 'package:food/Custome_Widgets/Register_check.dart';
import 'package:food/Custome_Widgets/login_appbar.dart';
import 'package:food/Custome_Widgets/login_button.dart';
import 'package:food/Custome_Widgets/login_row.dart';
import 'package:food/Custome_Widgets/login_textfield.dart';
import 'package:food/Custome_Widgets/login_textrich.dart';
import 'package:food/Custome_Widgets/or_divider.dart';
import 'package:food/Custome_Widgets/text_colum.dart';
import 'package:food/config/app_routes.dart';

class Register extends StatelessWidget {
  const Register({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginAppbar(
              svg: 'assets/svg/exit.svg',
              onTap: (){Navigator.pushNamed(context, AppRoutes.login);},
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextColum(
                      textOne: 'Create New Account',
                      textTwo: 'Create New Account'),
                  const SizedBox(
                    height: 24,
                  ),
                  const LoginRow(),
                  const SizedBox(
                    height: 35,
                  ),
                  const OrDivider(),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextFieldBuilder(),
                  const SizedBox(
                    height: 24,
                  ),
                  const CheckBoxWithText(),
                  const SizedBox(
                    height: 32,
                  ),
                  LoginButton(
                      text: 'Create an account',
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.mainPage);
                      }),
                  const SizedBox(
                    height: 24,
                  ),
                  LoginTextrich(
                      textOne: 'Already an existing user? ',
                      textTwo: 'Login',
                      onTap: () {
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
