import 'package:flutter/material.dart';
import 'package:virtual_aid/constant/constants.dart';
import 'package:virtual_aid/widgets/appbar.dart';
import 'package:virtual_aid/widgets/appointment.dart';

import '../widgets/home_screen.dart';

class Hospital2Details extends StatefulWidget {
  const Hospital2Details({super.key});

  @override
  State<Hospital2Details> createState() => _Hospital2DetailsState();
}

class _Hospital2DetailsState extends State<Hospital2Details> {
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
              SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: bottomNav(),
                      ),
                      Column(
                        children: const [
                          Center(
                            child: Text(
                              "Doctor List",
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
                      doctor2i(), //this card is Western Regional Hospital
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

Widget doctor2i() {
  return Builder(builder: (context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 140,
        child: GestureDetector(
          child: Card(
            elevation: 5,
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(
                  width: 100,
                  child: Image.network(
                    "https://cdn.dribbble.com/users/4189231/screenshots/17257062/media/dacb27276dfb414da12a8ee2d18d87f6.png?compress=1&resize=1000x750&vertical=top",
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
                          "Dr. Prakash Shrestha",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Best Doctor",
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
                            Text('4'),
                            Spacer(
                              flex: 1,
                            ),
                            Text(''),
                            Spacer(
                              flex: 1,
                            ),
                            Text(""),
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
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const BookingScreen(),
          ),
        );
      },
    );
  });
}
