import 'package:flutter/material.dart';

class PlanCard extends StatelessWidget {
  final String imagePath;
  final String textOne;
  final String textTwo;
  final String textThree;
  const PlanCard(
      {super.key,
      required this.imagePath,
      required this.textOne,
      required this.textTwo,
      required this.textThree});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          width: 14,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textOne,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                textTwo,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff8C8C8C),
                ),
              ),
              Text(
                textThree,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff187D44),
                ),
              ),
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
      ],
    );
  }
}

List<PlanCard> listBuilder = const [
  PlanCard(
      imagePath: 'assets/images/Chicken.png',
      textOne: 'Diet Plan',
      textTwo: 'Chicken wings, Vegetables and Fru..',
      textThree: '180 AED'),
  PlanCard(
      imagePath: 'assets/images/Chicken2.png',
      textOne: 'Gym Plan',
      textTwo: 'Chicken wings, Vegetables and Fru..',
      textThree: '180 AED'),
  PlanCard(
      imagePath: 'assets/images/Chicken2.png',
      textOne: 'Gym Plan',
      textTwo: 'Chicken wings, Vegetables and Fru..',
      textThree: '180 AED'),
  PlanCard(
      imagePath: 'assets/images/Chicken2.png',
      textOne: 'Gym Plan',
      textTwo: 'Chicken wings, Vegetables and Fru..',
      textThree: '180 AED'),
];

class PlanBuilder extends StatelessWidget {
  const PlanBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(24),
      itemBuilder: (context, index) {
        return listBuilder[index];
      },
      separatorBuilder: (context, index) => const Padding(
        padding:  EdgeInsets.symmetric(vertical: 8),
        child:  Divider(),
      ),
      itemCount: listBuilder.length,
    );
  }
}
