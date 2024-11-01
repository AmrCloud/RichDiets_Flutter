import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileOptions extends StatelessWidget {
  final String svgPath;
  final String text;
  const ProfileOptions({super.key,required this.svgPath, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(svgPath),
        const SizedBox(width: 16,),
        Expanded(child: Text(text,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),
        const IconButton(onPressed: null, icon: Icon(Icons.arrow_forward_ios_rounded))
      ],
    );
  }
}

List<ProfileOptions> listBuilder = const [
  ProfileOptions(svgPath: 'assets/svg/profileoptions/order.svg', text: 'Orders'),
  ProfileOptions(svgPath: 'assets/svg/profileoptions/sub.svg', text: 'Subscriptions'),
  ProfileOptions(svgPath: 'assets/svg/profileoptions/bell.svg', text: 'Notifications'),
  ProfileOptions(svgPath: 'assets/svg/profileoptions/address.svg', text: 'Addresses'),
  ProfileOptions(svgPath: 'assets/svg/profileoptions/wish.svg', text: 'Wishlist'),
  ProfileOptions(svgPath: 'assets/svg/profileoptions/edit.svg', text: 'Edit Profile'),
  ProfileOptions(svgPath: 'assets/svg/profileoptions/trophy.svg', text: 'Refer and earn'),
  ProfileOptions(svgPath: 'assets/svg/profileoptions/share.svg', text: 'Share the app'),
  ProfileOptions(svgPath: 'assets/svg/profileoptions/star.svg', text: 'Rate the app'),
  ProfileOptions(svgPath: 'assets/svg/profileoptions/report.svg', text: 'Report an issue'),
];

class OptionBuilder extends StatelessWidget {
  const OptionBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context,index){return listBuilder[index];}, separatorBuilder: (context,index)=>const Divider(), itemCount: listBuilder.length);
  }
}