import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:virtual_aid/constant/constants.dart';
import 'package:virtual_aid/screens/payment_successful.dart';
import 'package:virtual_aid/widgets/appbar.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          title: Text(
            'Payment',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SizedBox(
            height: 700,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                ),
                SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 50),

                      Column(
                        children: const [
                          Center(
                            child: Text(
                              "Payment Here",
                              style: TextStyle(
                                fontSize: 24,
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // const DoctorCard(),
                      const SizedBox(height: 5),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        height: 300,
                        child: GestureDetector(
                          child: Card(
                            elevation: 5,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Center(
                                          child: SizedBox(
                                            width: 300,
                                            child: Image.network(
                                              'https://upload.wikimedia.org/wikipedia/commons/e/ee/Khalti_Digital_Wallet_Logo.png.jpg',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                        Center(
                                          child: const Text(
                                            "Khalti",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          "Digital Wallet & Online Payment Services in Nepal",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        const Spacer(),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: const <Widget>[
                                            Icon(
                                              Icons.payment,
                                              color: primaryColor,
                                              size: 32,
                                            ),
                                            Spacer(
                                              flex: 1,
                                            ),
                                            // Text('Price: ',
                                            // style: TextStyle(
                                            //   color: primaryColor,
                                            //   fontSize: 16,
                                            //   fontWeight: FontWeight.bold,
                                            // ),
                                            // ),
                                            Text(
                                              'Rs. 500',
                                              style: TextStyle(
                                                color: primaryColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              'Only!',
                                              style: TextStyle(
                                                color: primaryColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Spacer()
                                          ],
                                        ),
                                        const Spacer(),
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
                                builder: (context) => const PaymentSuccessful(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
