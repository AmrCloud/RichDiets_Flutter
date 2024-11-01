import 'package:flutter/material.dart';

class ProfilePfp extends StatelessWidget {
  const ProfilePfp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/Abdo.png',width: 44,height: 44,),
        const SizedBox(width: 16,),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mohammed Ali',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
            Text('Mohamed@example.com',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff8C8C8C)),)
          ],
        )
      ],
    );
  }
}