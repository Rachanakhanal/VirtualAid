import 'package:flutter/material.dart';
import 'package:virtual_aid/constant/constants.dart';
import 'package:virtual_aid/widgets/appbar.dart';
import 'package:virtual_aid/widgets/custom_appbar.dart';
import 'package:virtual_aid/widgets/department_card1.dart';
import 'package:virtual_aid/widgets/department_card2.dart';
import 'package:virtual_aid/widgets/department_card3.dart';

import '../widgets/home_screen.dart';

class Hospital1Details extends StatefulWidget {
  const Hospital1Details({super.key});

  @override
  State<Hospital1Details> createState() => _Hospital1DetailsState();
}

class _Hospital1DetailsState extends State<Hospital1Details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            appbar(),
          ],
          body: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: bottomNav(),
              ),
              SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: const [
                          Center(
                            child: Text(
                              "Department Lists",
                              style: TextStyle(
                                fontSize: 24,
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // const DoctorCard(),
                      const SizedBox(
                        height: 5,
                      ),
                      department1i(),
                      department1ii(),
                      department1iii(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
