import 'package:flutter/material.dart';
import 'package:virtual_aid/constant/constants.dart';

class PaymentHistory extends StatefulWidget {
  const PaymentHistory({super.key});

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Payment History'),
          backgroundColor: primaryColor,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: FittedBox(
            child: Column(
              children: [
                Container(
                  // height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.payment,
                      size: 35.0,
                      color: primaryColor,
                    ),
                    title: Column(
                      children: const [
                        // SizedBox(height: 16.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'John Cena',
                            style: TextStyle(
                                color: textColor1, fontWeight: FontWeight.bold),
                            // textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Payment done with khalti \nDoctor Appointment",
                            style: TextStyle(color: textColor1),
                          ),
                        ),
                        // SizedBox(height: 16.0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '11/Feb/2021',
                            style: TextStyle(color: textColor2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.payment,
                      size: 35.0,
                      color: primaryColor,
                    ),
                    title: Column(
                      children: const [
                        // SizedBox(height: 16.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'John Cena',
                            style: TextStyle(
                                color: textColor1, fontWeight: FontWeight.bold),
                            // textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Payment done with khalti \nDoctor Appointment",
                            style: TextStyle(color: textColor1),
                          ),
                        ),
                        // SizedBox(height: 16.0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '11/Feb/2021',
                            style: TextStyle(color: textColor2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.payment,
                      size: 35.0,
                      color: primaryColor,
                    ),
                    title: Column(
                      children: const [
                        // SizedBox(height: 16.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'John Cena',
                            style: TextStyle(
                                color: textColor1, fontWeight: FontWeight.bold),
                            // textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Payment done with khalti \nDoctor Appointment",
                            style: TextStyle(color: textColor1),
                          ),
                        ),
                        // SizedBox(height: 16.0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '11/Feb/2021',
                            style: TextStyle(color: textColor2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.payment,
                      size: 35.0,
                      color: primaryColor,
                    ),
                    title: Column(
                      children: const [
                        // SizedBox(height: 16.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'John Cena',
                            style: TextStyle(
                                color: textColor1, fontWeight: FontWeight.bold),
                            // textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Payment done with khalti \nDoctor Appointment",
                            style: TextStyle(color: textColor1),
                          ),
                        ),
                        // SizedBox(height: 16.0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '11/Feb/2021',
                            style: TextStyle(color: textColor2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
