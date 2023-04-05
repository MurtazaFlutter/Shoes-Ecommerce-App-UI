// import 'package:flutter/material.dart';
// import 'package:iconly/iconly.dart';

// import '../features/favourite/cart_screen.dart';
// import '../features/favourite/notifications.dart';
// import '../features/favourite/profile_screen.dart';
// import '../features/favourite/views/favoruite_items_screen.dart';
// import '../features/home/views/home_screen.dart';

// class BottomNavBarScreen extends StatefulWidget {
//   const BottomNavBarScreen({Key? key}) : super(key: key);

//   @override
//   State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
// }

// class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
//   int _selectedIndex = 0;

//   final List<dynamic> _pages = [
//     const HomeScreen(),
//     const FavouriteItemsScreen(),
//     const NotificationsScreen(),
//     const ProfileScreen(),
//   ];

//   void _selectedScreen(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
       
//              Container(
//               decoration: const BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20),
//                   topRight: Radius.circular(20),
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 10,
//                   )
//                 ],
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   _bottomNavItem(
//                     IconlyBold.home,
//                     'Home',
//                     0,
//                   ),
//                   _bottomNavItem(
//                     IconlyBold.heart,
//                     'Favourites',
//                     1,
//                   ),
//                   const SizedBox(width: 40),
//                   _bottomNavItem(
//                     IconlyBold.notification,
//                     'Notifications',
//                     2,
//                   ),
//                   _bottomNavItem(
//                     IconlyBold.user_2,
//                     'Profile',
//                     3,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           _pages[_selectedIndex],
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => const CartScreen()),
//           );
//         },
//         child: const Icon(IconlyBold.bag),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }

//   Widget _bottomNavItem(IconData icon, String title, int index) {
//     return GestureDetector(
//       onTap: () => _selectedScreen(index),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(
//             icon,
//             color:
//                 _selectedIndex == index ? Colors.lightBlueAccent : Colors.black,
//           ),
//           const SizedBox(height: 5),
//           Text(
//             title,
//             style: TextStyle(
//               color: _selectedIndex == index
//                   ? Colors.lightBlueAccent
//                   : Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
