import 'package:flutter/material.dart';
import 'package:virtual_aid/screens/bottom_nav_bar.dart';
import '../constant/constants.dart';

Widget bottomNav() {
  return Builder(builder: (context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 105,
            height: 40,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [primaryColor, primaryColor],
                begin: Alignment.center,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Row(
              children: const [
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.home,
                  color: backgroundColor,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 18,
                    color: backgroundColor,
                    letterSpacing: 0.53,
                  ),
                ),
              ],
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },
      ),
    );
  });
}
