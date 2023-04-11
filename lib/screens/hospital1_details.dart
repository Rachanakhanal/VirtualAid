import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_aid/component/department_component.dart';
import 'package:virtual_aid/constant/constants.dart';
import 'package:virtual_aid/models/department_model.dart';
import 'package:virtual_aid/widgets/appbar.dart';
import 'package:virtual_aid/widgets/department_card1.dart';
import '../controller/department_controller.dart';
import '../controller/hospital_controller.dart';
import '../widgets/home_screen.dart';

class Hospital1Details extends StatelessWidget {
  Hospital1Details({super.key, required department});
  final DepartmentController departmentController =
      Get.put(DepartmentController());
  final HospitalController hospitalController = Get.put(HospitalController());

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
                      Obx(() => Wrap(
                            children: departmentController.department.value
                                .map((Department department) =>
                                    DepartmentComponent(department: department))
                                .toList(),
                          )),
                      // department1i(),
                      // department1ii(),
                      // department1iii(),
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
