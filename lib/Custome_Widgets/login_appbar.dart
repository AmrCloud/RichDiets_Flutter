import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginAppbar extends StatelessWidget {
  final String? svg;
  final VoidCallback? onTap;
  const LoginAppbar({super.key, this.svg,this.onTap});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 280,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Image.asset(
              'assets/images/Logo.png',
              width: 75,
              height: 90,
            ),
          ),
        ),
        Positioned(
          top: 57,
          left: 24,
          child: InkWell(
            onTap:onTap,
            child: svg != null ? SvgPicture.asset(svg!) : const SizedBox(),
          ),
        ),
      ],
    );
  }
}
