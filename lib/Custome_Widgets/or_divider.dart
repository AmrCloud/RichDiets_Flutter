import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const Row(
        children: [
          Expanded(
            child: Divider(),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'OR',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                color: Color(0xFF187D44)),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Divider(),
          )
        ],
      ),
    );
  }
}
