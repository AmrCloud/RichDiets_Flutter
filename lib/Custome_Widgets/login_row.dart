import 'package:flutter/material.dart';

class LoginRow extends StatelessWidget {

  const LoginRow({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LoginContainer(
          containerColor: Color(0x1A3B5998),
          imagePath: 'assets/images/facebook.png',
          text: 'Facebook',
          textColor: Color(0xFF3B5998),
        ),
        SizedBox(
          width: 16,
        ),
        LoginContainer(
          containerColor: Color(0x1A31AA52),
          imagePath: 'assets/images/google.png',
          text: 'Google',
          textColor: Color(0xFF31AA52),
        )
      ],
    );
  }
}

class LoginContainer extends StatelessWidget {
  final Color containerColor;
  final String imagePath;
  final String text;
  final Color textColor;
  const LoginContainer(
      {super.key,
      required this.containerColor,
      required this.imagePath,
      required this.text,
      required this.textColor});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 163,
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 24,
              height: 24,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
