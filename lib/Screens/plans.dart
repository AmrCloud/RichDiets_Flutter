import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Custome_Widgets/plan_builder.dart';

class Plans extends StatelessWidget {
  const Plans({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
          leadingWidth: 0,
          titleSpacing: 0,
          title: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Plans',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                InkWell(
                  child: SvgPicture.asset(
                    'assets/svg/search.svg',
                  ),
                ),
              ],
            ),
          ),
        ),
        const Expanded(child: PlanBuilder()),
      ],
    );
  }
}
