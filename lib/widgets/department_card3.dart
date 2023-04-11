import 'package:flutter/material.dart';
import 'package:virtual_aid/screens/green_doctors_list.dart';

Widget department3i() {
  return Builder(builder: (context) {
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
                      "https://www.shutterstock.com/image-vector/medical-concept-hospital-building-doctor-260nw-588196298.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            "Dental",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Dental care is important for your overall health",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Spacer(),
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
                  builder: (context) => const Dental(),
                ),
              );
            },
          ),
        ),
      ),
    );
  });
}

Widget department3ii() {
  return Builder(builder: (context) {
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
                      "https://www.shutterstock.com/image-vector/medical-concept-hospital-building-doctor-260nw-588196298.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            "Orthopaedics",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Orthopaedic surgeons treat a wide range of conditions",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Spacer(),
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
                  builder: (context) => const Orthopaedics(),
                ),
              );
            },
          ),
        ),
      ),
    );
  });
}

Widget department3iii() {
  return Builder(builder: (context) {
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
                      "https://www.shutterstock.com/image-vector/medical-concept-hospital-building-doctor-260nw-588196298.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            "Gynaecology",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Get the best gynaecologists in your area",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Spacer(),
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
                  builder: (context) => const Gynaecology(),
                ),
              );
            },
          ),
        ),
      ),
    );
  });
}
