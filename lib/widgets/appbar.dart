import 'package:flutter/material.dart';
import 'package:virtual_aid/constant/constants.dart';
import 'package:virtual_aid/screens/login.dart';
import 'package:virtual_aid/widgets/search.dart';

SliverAppBar appbar() {
  return SliverAppBar(
    iconTheme: const IconThemeData(color: primaryColor),
    backgroundColor: backgroundColor,
    centerTitle: true,
    title: const Text(
      'Doctor List',
      style: TextStyle(fontSize: 18, color: textColor1, letterSpacing: 0.53),
    ),
    actions: [
      Builder(
        builder: (context) {
          const SizedBox(
            height: 10,
          );
          return InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 170,
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
                      width: 12,
                    ),
                    Text(
                      "Login | Register",
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
                  builder: (context) => const Login(),
                ),
              );
            },
          );
        },
      ),
    ],
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(90),
      child: Container(
        padding: const EdgeInsets.only(left: 20, bottom: 5),
        child: Column(
          children: [SearchWidget()],
        ),
      ),
    ),
  );
}
