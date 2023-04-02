import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shoes_ecommerce_app/features/favourite/cart_screen.dart';
import 'package:shoes_ecommerce_app/features/favourite/notifications.dart';
import 'package:shoes_ecommerce_app/features/favourite/profile_screen.dart';
import 'package:shoes_ecommerce_app/features/favourite/views/favoruite_items_screen.dart';
import 'package:shoes_ecommerce_app/features/home/views/home_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 0;
  final List _pages = [
    const HomeScreen(),
    const FavouriteItemsScreen(),
    const CartScreen(),
    const NotificationsScreen(),
    const ProfileScreen()
  ];

  void _selectedScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            onTap: _selectedScreen,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(IconlyBold.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(IconlyBold.home),
                label: 'Home',
              )
            ],
          ),
        ],
      ),
    );
  }
}
