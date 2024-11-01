import 'package:flutter/material.dart';

class CheckBoxWithText extends StatefulWidget {
  const CheckBoxWithText({super.key});

  @override
  _CheckBoxWithTextState createState() => _CheckBoxWithTextState();
}

class _CheckBoxWithTextState extends State<CheckBoxWithText> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value!; 
            });
          },
          activeColor:
              const Color(0xFF187D44), 
        ),
        const SizedBox(width: 4),
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(text: 'I Accept the '),
              TextSpan(
                text: 'terms & Conditions',
                style: TextStyle(
                  color: Color(0xFF187D44),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
