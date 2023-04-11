import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:virtual_aid/models/hospital_model.dart';
import 'package:virtual_aid/screens/home_page.dart';

class HospitalComponent extends StatelessWidget {
  final Hospital hospital;
  const HospitalComponent({super.key, required this.hospital});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: Get.width / 2,
        width: Get.width / 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => Get.to(HomePage),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Expanded(child: Image.network("$baseUrl/${hospital.image}")),
                    Text(
                      hospital.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //Text(hospital.price),
                    //Text(hospital.description)
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
