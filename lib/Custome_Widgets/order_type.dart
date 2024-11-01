import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderType extends StatelessWidget {
  final String imagePath;
  final String text;
  final bool isSelected; 
  final VoidCallback onTap; 

  const OrderType({
    super.key,
    required this.imagePath,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 163,
        height: 52,
        decoration: BoxDecoration(
          color: isSelected ? Colors.green.withOpacity(0.2) : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? Colors.green : const Color(0xFFEDEDED),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                imagePath,
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 8),
              Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  color: isSelected ? Colors.green : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
