import 'package:flutter/material.dart';
import 'package:virtual_aid/constant/constants.dart';
import 'package:virtual_aid/widgets/custom_appbar.dart';
import 'package:virtual_aid/widgets/drawer.dart';
import 'package:virtual_aid/widgets/hospital_card1.dart';
import 'package:virtual_aid/widgets/hospital_card2.dart';
import 'package:virtual_aid/widgets/hospital_card3.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            customAppBar(),
          ],
          body: Column(
            children: [
              SafeArea(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: const [
                          Center(
                            child: Text(
                              "Hospital Lists",
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
                      const HospitalCard1(),
                      const HospitalCard2(),
                      const HospitalCard3(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // drawer: drawerScreen(context),
      ),
    );
  }
}
