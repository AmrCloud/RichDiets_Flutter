import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/config/cart_bloc.dart';
import 'package:food/config/cart_event.dart';
import 'package:food/config/cart_state.dart';

class CartProduct extends StatelessWidget {
  final String textOne;
  final String imagePath;

  const CartProduct({
    super.key,
    required this.textOne,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartProductBloc(), // Provide the BLoC
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textOne,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    '1500 AED',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff187D44)),
                  ),
                  const SizedBox(height: 8),
                  BlocBuilder<CartProductBloc, CartProductState>(
                    builder: (context, state) {
                      return Container(
                        height: 40,
                        width: 124,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  context
                                      .read<CartProductBloc>()
                                      .add(DecrementQuantity());
                                },
                                child: const Text(
                                  '-',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xff8C8C8C),
                                  ),
                                ),
                              ),
                              Text(
                                '${state.quantity}', // Display current quantity
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xff187D44)),
                              ),
                              InkWell(
                                onTap: () {
                                  context
                                      .read<CartProductBloc>()
                                      .add(IncrementQuantity());
                                },
                                child: const Text(
                                  '+',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartProductBuilder extends StatelessWidget {
  const CartProductBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return listBuilder[index];
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: listBuilder.length);
  }
}

List<CartProduct> listBuilder = const [
  CartProduct(
      textOne: 'Pizza Ransh extra cheese',
      imagePath: 'assets/images/Pizza.png'),
  CartProduct(
      textOne: 'Chicken Cacciatore',
      imagePath: 'assets/images/Chickenwings.png'),
];
