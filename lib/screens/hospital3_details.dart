import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:virtual_aid/constant/constants.dart';
import 'package:virtual_aid/widgets/appbar.dart';
import 'package:virtual_aid/widgets/custom_appbar.dart';
import 'package:virtual_aid/widgets/department_card3.dart';

import '../widgets/home_screen.dart';

class Hospital3Details extends StatefulWidget {
  const Hospital3Details({super.key});

  @override
  State<Hospital3Details> createState() => _Hospital3DetailsState();
}

class _Hospital3DetailsState extends State<Hospital3Details> {
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
                        height: 10,
                      ),
                      department3i(), //this card is Western Regional Hospital
                      department3ii(), //this card is Himalayan Eye Hospital
                      department3iii(), //this card is Green Pastures Hospital
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
