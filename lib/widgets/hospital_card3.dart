import 'package:flutter/material.dart';
import 'package:virtual_aid/screens/hospital1_details.dart';
import 'package:virtual_aid/screens/hospital3_details.dart';

class HospitalCard3 extends StatelessWidget {
  const HospitalCard3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          height: 130,
          child: GestureDetector(
            child: Card(
              elevation: 5,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: Image.network(
                      "https://img.freepik.com/premium-vector/hospital-service-concept-illustration-health-medical-care-taking-excellent-care-patients_1150-50290.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "Green Pastures Hospital",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "Address",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Icon(
                                Icons.star_border,
                                color: Colors.yellow,
                                size: 16,
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Text('4.5'),
                              Spacer(
                                flex: 1,
                              ),
                              Text('Reviews'),
                              Spacer(
                                flex: 1,
                              ),
                              Text('(20)'),
                              Spacer(
                                flex: 7,
                              ),
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
                  builder: (context) => const Hospital3Details(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
