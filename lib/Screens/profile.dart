import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/Custome_Widgets/profile_options.dart';
import 'package:food/Custome_Widgets/profile_pfp.dart';
import 'package:food/Custome_Widgets/wallet.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 0,
        titleSpacing: 0,
        title: const Padding(
          padding: EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Profile',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const ProfilePfp(),
            const SizedBox(
              height: 24,
            ),
            const Wallet(),
            const SizedBox(
              height: 16,
            ),
            const OptionBuilder(),
            const Divider(),
            Row(
              children: [
                SvgPicture.asset('assets/svg/profileoptions/logout.svg'),
                const SizedBox(
                  width: 16,
                ),
                const Expanded(
                    child: Text(
                  'Logout',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffF16063)),
                )),
                const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.arrow_forward_ios_rounded))
              ],
            )
          ],
        ),
      ),
    );
  }
}
