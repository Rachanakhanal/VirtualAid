import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:virtual_aid/constant/constants.dart';
import 'package:virtual_aid/screens/bottom_nav_bar.dart';
import 'package:virtual_aid/screens/payment.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar:  AppBar(
            backgroundColor: primaryColor,
            elevation: 0,
            title: Text(
              'Appointment Booking',
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
        body: SafeArea(
          child: NotificationListener<OverscrollIndicatorNotification>(
            child: ListView(
            physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                Container(
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                    height: 250,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Form(
                  // key: _formKey,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            'Enter Patient Details',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: primaryColor,
                            ),
                            labelText: 'Patient Name*',
                            hintText: 'Patient Name*',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            labelStyle: TextStyle(color: textColor2),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 5.0),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone,
                              color: primaryColor,
                            ),
                            labelText: 'Phone Number*',
                            hintText: 'Phone Number*',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            labelStyle: TextStyle(color: textColor2),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 5.0),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.description,
                              color: primaryColor,
                            ),
                            labelText: 'Description',
                            hintText: 'Description',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            labelStyle: TextStyle(color: textColor2),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 5.0),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Please Select a date"),
                            ElevatedButton(
                              onPressed: () async {
                                DateTime? datePicked = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2024),
                                );
                              },
                              child: Text("Select Date"),
                              style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Please Select Time"),
                            ElevatedButton(
                              onPressed: () async {
                                var pickedTime = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                  initialEntryMode: TimePickerEntryMode.dial,
                                );
                              },
                              child: Text("Select Time"),
                              style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 2,
                              primary: primaryColor,
                              onPrimary: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Payment(),
                                ),
                              );
                            },
                            child: Text(
                              "Book Appointment",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
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
    );
  }
}
