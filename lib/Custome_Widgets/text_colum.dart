import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextColum extends StatelessWidget {
  final String textOne;
  final String textTwo;
  const TextColum({super.key, required this.textOne, required this.textTwo});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textOne,
          style: const TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
            color: Color(0xff1F1F1F),
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          textTwo,
          style: const TextStyle(
            fontSize: 12,
            fontFamily: 'Poppins',
            color: Color(0xff8C8C8C),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
