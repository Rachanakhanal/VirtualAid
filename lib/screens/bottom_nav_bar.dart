import 'package:virtual_aid/screens/menu.dart';

import '/constant/constants.dart';
import '/screens/home_page.dart';
import '/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIdx = 0;
  //Pages for bottom navigation bar
  final pages = [
    HomePage(),
    const ProfilePage(),
    const MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(254, 64, 102, 1),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: const Color.fromARGB(255, 255, 201, 212).withOpacity(.01),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: GNav(
              // google nav bar
              curve: Curves.easeOutExpo, // tab animation curves
              duration: const Duration(milliseconds: 300),
              haptic: true,
              hoverColor: const Color.fromARGB(255, 255, 201, 212),
              gap: 8,
              activeColor: primaryColor,

              iconSize: 25,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: icon,

              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  backgroundColor: primaryColor.withOpacity(0.2),
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                  backgroundColor: primaryColor.withOpacity(0.2),
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Menu',
                  backgroundColor: primaryColor.withOpacity(0.2),
                ),
              ],
              onTabChange: (idx) {
                setState(() {
                  pageIdx = idx;
                });
              },
            ),
          ),
        ),
      ),
      body: pages[pageIdx], // pages is a list of widgets
    );
  }
}
