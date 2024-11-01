import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Screens/cart.dart';
import 'package:food/Screens/order.dart';
import 'package:food/Screens/plans.dart';
import 'package:food/Screens/profile.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});
  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    Plans(),
    Cart(),
    Order(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/nav2.svg'), label: 'Plans'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/nav3.svg'), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/clipboard.png',
              ),
              label: 'Order'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/nav4.svg'), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff187D44),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
