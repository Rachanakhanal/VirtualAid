import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_aid/constant/constants.dart';
import 'package:virtual_aid/models/hospital_model.dart';
import 'package:virtual_aid/widgets/custom_appbar.dart';
import 'package:virtual_aid/widgets/hospital_card1.dart';
import 'package:virtual_aid/widgets/hospital_card2.dart';
import 'package:virtual_aid/widgets/hospital_card3.dart';

import '../component/hospital_component.dart';
import '../controller/hospital_controller.dart';

class HomePage extends StatelessWidget {
  final HospitalController hospitalController = Get.put(HospitalController());
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            customAppBar(),
          ],
          body: SingleChildScrollView(
            child: Column(
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
                        Obx(() => Wrap(
                              children: hospitalController.hospital.value
                                  .map((Hospital hospital) =>
                                      HospitalComponent(hospital: hospital))
                                  .toList(),
                            )),

                        // const HospitalCard1(),
                        // const HospitalCard2(),
                        // const HospitalCard3(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // drawer: drawerScreen(context),
      ),
    );
  }
}
