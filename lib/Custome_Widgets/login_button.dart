import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const LoginButton({super.key, required this.text,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: MediaQuery.of(context).size.width,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor:  const Color.fromRGBO(24, 125, 68, 1), 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), 
          ),
          padding:  const EdgeInsets.symmetric(vertical: 18),
        ),
        child: Text(
          text, 
          style:  const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 14, 
          ),
        ),
      ),
    );
  }
}
