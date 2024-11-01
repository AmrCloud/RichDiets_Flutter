import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/Custome_Widgets/order_button.dart';
import 'package:food/Custome_Widgets/order_card.dart';
import 'package:food/Custome_Widgets/order_textfield.dart';
import 'package:food/Custome_Widgets/order_type.dart';
import 'package:food/Custome_Widgets/select_order.dart';
import 'package:food/config/order_bloc.dart';

class Order extends StatelessWidget {
  const Order({super.key});

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
                'Order',
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
        child: BlocProvider(
          create: (_) => DeliveryBloc(),
          child: const OrderContent(),
        ),
      ),
    );
  }
}

class OrderContent extends StatelessWidget {
  const OrderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        const OrderCard(
          text: 'Pizza Ranch extra cheese',
          imagePath: 'assets/images/Pizza.png',
        ),
        const Divider(),
        const OrderCard(
          text: 'Chicken Cacciatore',
          imagePath: 'assets/images/Chickenwings.png',
        ),
        const Divider(),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Voucher',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              const OrderTextfield(),
              const SizedBox(height: 30),
              const Text(
                'Choose the method',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              BlocBuilder<DeliveryBloc, DeliveryState>(
                builder: (context, state) {
                  final isDeliverySelected =
                      state.selectedOption == DeliveryOption.delivery;
                  final isPickupSelected =
                      state.selectedOption == DeliveryOption.pickup;

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OrderType(
                        imagePath: 'assets/svg/bike.svg',
                        text: 'Delivery',
                        isSelected: isDeliverySelected,
                        onTap: () =>
                            context.read<DeliveryBloc>().add(SelectDelivery()),
                      ),
                      const SizedBox(width: 16),
                      OrderType(
                        imagePath: 'assets/svg/bags.svg',
                        text: 'Pickup',
                        isSelected: isPickupSelected,
                        onTap: () =>
                            context.read<DeliveryBloc>().add(SelectPickup()),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 24),
              const Text(
                'Select a branch',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 8,
              ),
              const SelectOrder(),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Order Summury',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(),
              const SizedBox(
                height: 16,
              ),
              const Row(
                children: [
                  Expanded(
                      child: Text(
                    'Subtotal',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  )),
                  Text(
                    '3000 AED',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      'Tax',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    '5 AED',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(),
              const SizedBox(
                height: 16,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      'Total Amount',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    '155 AED',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff187D44)),
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OrderButton(
                    fillColor: Color(0xffE8F2EC),
                    text: 'Add More items',
                    textColor: Color(0xff187D44),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  OrderButton(
                    fillColor: Color(0xff187D44),
                    text: 'Checkout',
                    textColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
