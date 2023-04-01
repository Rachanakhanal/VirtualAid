import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:virtual_aid/widgets/book_appointment.dart';

import '../constant/constants.dart';
import '../widgets/appbar.dart';
import '../widgets/home_screen.dart';

class Dental extends StatelessWidget {
  const Dental({super.key});

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
                      doctor3i(),
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

Widget doctor3i() {
  return Builder(builder: (context) {
    return Container(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Dr. Sushil Shrestha",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Best Orthopaedics",
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
                          Text('3.5'),
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
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookingScreen(),
            ),
          );
        },
      ),
    );
  });
}

class Orthopaedics extends StatelessWidget {
  const Orthopaedics({super.key});

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
                      doctor3ii(),
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

Widget doctor3ii() {
  return Builder(builder: (context) {
    return Container(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Dr. Kiran Sharma",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Best Orthopaedics",
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
                          Text('3.5'),
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
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookingScreen(),
            ),
          );
        },
      ),
    );
  });
}

Widget doctor3iii() {
  return Builder(builder: (context) {
    return Container(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Dr. Shristi Shrestha",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Best Orthopaedics pokhara",
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
                          Text('3.5'),
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
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookingScreen(),
            ),
          );
        },
      ),
    );
  });
}

class Gynaecology extends StatelessWidget {
  const Gynaecology({super.key});

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
                      doctor3iv(),
                      doctor3ix()
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

Widget doctor3iv() {
  return Builder(builder: (context) {
    return Container(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Dr. Shristi Shrestha",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Best Orthopaedics pokhara",
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
                          Text('3.5'),
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
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookingScreen(),
            ),
          );
        },
      ),
    );
  });
}

Widget doctor3ix() {
  return Builder(builder: (context) {
    return Container(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Dr. Sushil Maharjan",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Best Orthopaedics pokhara",
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
                          Text('3.5'),
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
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookingScreen(),
            ),
          );
        },
      ),
    );
  });
}
