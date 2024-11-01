import 'package:flutter/material.dart';

class LoginTextrich extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final VoidCallback onTap;
  const LoginTextrich({super.key,required this.textOne,required this.textTwo,required this.onTap});
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: textOne, 
                style: const TextStyle(
                  color: Colors.black, 
                  fontSize: 14, 
                  fontWeight: FontWeight.w500, 
                ),
              ),
              TextSpan(
                text: textTwo,
                style: const TextStyle(
                  color:
                      Color.fromRGBO(24, 125, 68, 1), 
                  fontSize: 14, 
                  fontWeight: FontWeight.w500, 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
