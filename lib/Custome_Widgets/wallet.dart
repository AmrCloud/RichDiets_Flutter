import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      width: 342,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
            image: AssetImage('assets/images/walletback.png'),
            fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Last Charged : 01-01-2023',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  const Text(
                    'Your Wallet',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg/column.svg'),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        '280,00AED',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFFFFFF),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                SvgPicture.asset('assets/svg/exchange.svg'),
                const SizedBox(height: 4,),
                const Text(
                  'Manage',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFFFFFF),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
