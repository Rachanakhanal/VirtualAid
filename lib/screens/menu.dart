import 'package:flutter/material.dart';
import 'package:virtual_aid/constant/constants.dart';
import 'package:virtual_aid/screens/bottom_nav_bar.dart';
import 'package:virtual_aid/screens/home_page.dart';
import 'package:virtual_aid/screens/profile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          title: const Center(
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              height: 90,
              child: InkWell(
                child: Card(
                  //make circular
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 1,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  const Icon(Icons.local_hospital),
                                  const Spacer(),
                                  Text(
                                    "Book Hospital Appointment",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.arrow_forward_ios),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
            ),
            // Container(
            //   padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            //   height: 90,
            //   child: InkWell(
            //     child: Card(
            //       //make circular
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(30),
            //       ),
            //       elevation: 1,
            //       color: Colors.white,
            //       child: Row(
            //         children: [
            //           Flexible(
            //             child: Padding(
            //               padding: const EdgeInsets.symmetric(
            //                   horizontal: 10, vertical: 20),
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: <Widget>[
            //                   Row(
            //                     children: [
            //                       SizedBox(width: 5),
            //                       const Icon(Icons.person),
            //                       SizedBox(width: 40),
            //                       Text(
            //                         "Profile",
            //                         style: TextStyle(
            //                           fontSize: 18,
            //                           fontWeight: FontWeight.bold,
            //                         ),
            //                       ),
            //                       const Spacer(),
            //                       const Icon(Icons.arrow_forward_ios),
            //                     ],
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     onTap: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => const ProfilePage(),
            //         ),
            //       );
            //     },
            //   ),
            // ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              height: 90,
              child: InkWell(
                child: Card(
                  //make circular
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 1,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  SizedBox(width: 5),
                                  const Icon(Icons.abc_outlined),
                                  SizedBox(width: 40),
                                  Text(
                                    "About Us",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.arrow_forward_ios),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              height: 90,
              child: InkWell(
                child: Card(
                  //make circular
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 1,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  SizedBox(width: 5),
                                  const Icon(Icons.telegram),
                                  SizedBox(width: 40),
                                  Text(
                                    "Follow Us",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.arrow_forward_ios),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
            ),
          ],
        ),
      ),
    );
  }
}
