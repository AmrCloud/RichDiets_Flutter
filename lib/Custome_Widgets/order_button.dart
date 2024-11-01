import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  final Color fillColor;
  final String text;
  final Color textColor;

  const OrderButton({
    super.key,
    required this.fillColor,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 163,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: fillColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(16),
          elevation: 0,
        ),
        onPressed: () {},
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
