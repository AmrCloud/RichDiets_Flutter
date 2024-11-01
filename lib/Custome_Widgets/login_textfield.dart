import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginTextfield extends StatelessWidget {
  final String hintText;
  final String? icon;
  final Widget? prefixContainer;
  final bool hidden;
  final TextInputType textType;
  const LoginTextfield(
      {super.key,
      required this.hintText,
      this.icon,
      this.prefixContainer,
      this.hidden = false,
      this.textType = TextInputType.text});
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textType,
      obscureText: hidden,
      decoration: InputDecoration(
        suffixIcon: icon != null
            ? SizedBox(
                width: 20, 
                height: 20, 
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: SvgPicture.asset(icon!),
                ),
              )
            : const SizedBox(),
        prefixIcon: prefixContainer != null
            ? Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: prefixContainer,
              )
            : null,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Color.fromRGBO(237, 237, 237, 1)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Color.fromRGBO(237, 237, 237, 1)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Color.fromRGBO(237, 237, 237, 1)),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: 44,
        height: 31,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFE8F2EC),
        ),
        child: Image.asset(
          'assets/images/Flag.png',
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}

class TextFieldRow extends StatelessWidget {
  final String text;
  const TextFieldRow({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Row(
        children: [
          const TextFieldContainer(),
          const SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
          )
        ],
      ),
    );
  }
}

List<LoginTextfield> buildList = const [
  LoginTextfield(hintText: 'Full Name'),
  LoginTextfield(hintText: 'Email Address'),
  LoginTextfield(
    hintText: 'Enter Phone Number',
    prefixContainer: TextFieldRow(text: '(+971)'),
    textType: TextInputType.phone,
  ),
  LoginTextfield(
    hintText: 'Password',
    icon: 'assets/svg/eye.svg',
    hidden: true,
  ),
  LoginTextfield(
    hintText: 'Confirm Password',
    icon: 'assets/svg/eye.svg',
    hidden: true,
  ),
  LoginTextfield(hintText: 'Enter referral code (Optional)')
];

class TextFieldBuilder extends StatelessWidget {
  const TextFieldBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return buildList[index];
        },
        separatorBuilder: (context, index) => const SizedBox(
              height: 16,
            ),
        itemCount: buildList.length);
  }
}
