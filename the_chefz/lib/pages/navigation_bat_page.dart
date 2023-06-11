import 'package:flutter/material.dart';
import 'package:the_chefz/main.dart';
import 'package:the_chefz/pages/home_page.dart';
import 'package:the_chefz/pages/profile_page.dart';

import 'my_requests_scren.dart';

class NavigationBarSPage extends StatefulWidget {
  NavigationBarSPage({super.key});

  @override
  State<NavigationBarSPage> createState() => _NavigationBarSPageState();
}

class _NavigationBarSPageState extends State<NavigationBarSPage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    MyRequestsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: primaryColor,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu_outlined),
              label: 'شيفز',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined),
              label: 'طلباتي',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'حسابي',
            ),
          ],
        ),
      ),
    );
  }
}
