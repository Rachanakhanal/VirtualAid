import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_aid/screens/bottom_nav_bar.dart';
import 'package:virtual_aid/screens/register.dart';
import '../controller/authentication_controller.dart';
import '../utils/api.dart';
import '../utils/shared_prefs.dart';
import '/constant/constants.dart';
import 'package:http/http.dart' as http;

//new

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String message = "";
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();
  //final authentication = Get.find<Authentication>();
  final AuthHospital authService = AuthHospital();

  //new
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // set it to false
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          decoration: const BoxDecoration(
            color: primaryColor2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Center(
                  child: logo, //this is the logo on the login screen
                ),
              ),
              const Text(
                "login Here",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 300,
                child: Form(
                  key: _fromKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _email,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: primaryColor,
                          ),
                          labelText: 'Email Address',
                          hintText: 'Email Address',
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
                        style: const TextStyle(),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            if (mounted) {
                              setState(() {
                                isLoading = false;
                              });
                            }
                            return "Please Enter Your Email ";
                          }

                          if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                            if (mounted) {
                              setState(() {
                                isLoading = false;
                              });
                            }
                            return "Prease Enter Valid Email";
                          } else {
                            return null;
                          }
                        },
                        onSaved: (String? email) {},
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _password,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.password,
                            color: primaryColor,
                          ),
                          labelText: 'Password',
                          hintText: 'Password',
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
                        obscureText: true,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            if (mounted) {
                              setState(() {
                                isLoading = false;
                              });
                            }
                            return "Please Enter Your Password";
                          } else {
                            return null;
                          }
                        },
                      ),
                      Text(
                        message,
                        style: const TextStyle(color: Colors.red),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text("Forgot Password?"),
                          GestureDetector(
                            child: const Text(
                              "Reset here",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 14,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => const Register()));
                            },
                          ),
                        ],
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        margin: const EdgeInsets.all(50.0),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [primaryColor, primaryColor],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: primaryColor3,
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset: Offset(3, 7),
                            )
                          ],
                        ),
                        child: InkWell(
                          onTap: () async {
                            if (mounted) {
                              setState(
                                () {
                                  isLoading = false;
                                },
                              );
                            }
                            Future.delayed(const Duration(seconds: 5), () {
                              if (mounted) {
                                setState(() {
                                  isLoading = false;
                                });
                              }
                            });

                            if (_fromKey.currentState!.validate()) {
                              login();
                              print("Form data validated Sucessfully");
                            } else {
                              print("Form data validated Unsucessfully");
                            }

                            Future.delayed(const Duration(seconds: 5), () {
                              if (mounted) {
                                //checks if widget is still active and not disposed
                                setState(() {
                                  //tells the widget builder to rebuild again because ui has updated
                                  message =
                                      ""; //update the variable declare this under your class so its accessible for both your widget build and initState which is located under widget build{}
                                });
                              }
                            });
                          },
                          child: Center(
                            child: isLoading
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 2,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Loading...",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  )
                                : const Text(
                                    'Login',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Doesn't have account?"),
                          GestureDetector(
                            child: const Text(
                              "Register here",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 14,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => const Register()));
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("OR"),
                          const SizedBox(height: 10),
                          GestureDetector(
                            child: const Text(
                              "Skip for Now!",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: primaryColor,
                                fontSize: 14,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            },
                          ),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 1 / 3,
                      ),
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

  Future<void> login() async {
    setState(() {
      isLoading = true;
    });

    String email = _email.text;

    String password = _password.text;
    var data = {'email': email, 'password': password};

    var response = await http.post(
        Uri.parse("http://172.16.19.109/DoctorAppointment_API/login.php"),
        body: json.encode(data));
    Map message = jsonDecode(response.body);

    if (message['status'] == 'success') {
      setState(() {
        isLoading = true;
      });
      Future.delayed(const Duration(seconds: 5));
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login Successfully'),
          duration: Duration(seconds: 3),
          backgroundColor: Colors.green,
        ),
      );
      // ignore: use_build_context_synchronously
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Login Sucessfully"),
              actions: [
                ElevatedButton(
                  child: const Text("OK"),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: primaryColor,
                    side: const BorderSide(color: backgroundColor, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              ],
            );
          });
    } else if (message['status'] != 'success') {
      setState(() {
        "Invalid email or password";
        isLoading = true;
      });
      Future.delayed(const Duration(seconds: 3));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Incorrect email or password'),
          duration: Duration(seconds: 3),
          backgroundColor: Colors.red,
        ),
      );
      // showDialog(
      //     context: context,
      //     builder: (BuildContext context) {
      //       return AlertDialog(
      //         title: const Text("Incorrect email or password"),
      //         actions: [
      //           ElevatedButton(
      //             child: const Text("OK"),
      //             onPressed: () {
      //               Navigator.pushReplacement(context,
      //                   MaterialPageRoute(builder: (context) => const Login()));
      //             },
      //             style: ElevatedButton.styleFrom(
      //               elevation: 0,
      //               backgroundColor: primaryColor,
      //               side: const BorderSide(color: backgroundColor, width: 1),
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(3),
      //               ),
      //             ),
      //           ),
      //         ],
      //       );
      //     });
    }
  }
}
