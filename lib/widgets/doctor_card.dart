import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

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
                            "Dr name",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "category",
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
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
