import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../constants/constants.dart';
import '../features/favourite/notifications.dart';
import '../features/favourite/profile_screen.dart';
import '../features/favourite/views/favoruite_items_screen.dart';
import '../features/home/views/home_screen.dart';

class BottomNavBarV2 extends StatefulWidget {
  const BottomNavBarV2({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavBarV2State createState() => _BottomNavBarV2State();
}

class _BottomNavBarV2State extends State<BottomNavBarV2> {
  int _selectedIndex = 0;

  final List<dynamic> _pages = [
    const HomeScreen(),
    const FavouriteItemsScreen(),
    const NotificationsScreen(),
    const ProfileScreen(),
  ];

  void _selectedScreen(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => _pages[_selectedIndex]),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          _pages[_selectedIndex],
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              width: size.width,
              height: 80,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 102),
                    painter: BNBCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(
                        backgroundColor: kDefaultColor,
                        elevation: 2,
                        onPressed: () {},
                        child: const Icon(Icons.shopping_basket)),
                  ),
                  SizedBox(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            IconlyBold.home,
                            color: _selectedIndex == 0
                                ? Colors.lightBlueAccent
                                : Colors.grey.shade400,
                          ),
                          onPressed: () {
                            _selectedScreen(0);
                          },
                          splashColor: Colors.white,
                        ),
                        IconButton(
                            icon: Icon(
                              IconlyLight.heart,
                              color: _selectedIndex == 1
                                  ? Colors.lightBlueAccent
                                  : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              _selectedScreen(1);
                            }),
                        Container(
                          width: size.width * 0.20,
                        ),
                        IconButton(
                            icon: Icon(
                              IconlyLight.notification,
                              color: _selectedIndex == 2
                                  ? Colors.lightBlueAccent
                                  : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              _selectedScreen(2);
                            }),
                        IconButton(
                            icon: Icon(
                              IconlyLight.user_1,
                              color: _selectedIndex == 3
                                  ? Colors.lightBlue
                                  : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              _selectedScreen(3);
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(10, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: const Radius.circular(30.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.red, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
