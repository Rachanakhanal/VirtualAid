import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:virtual_aid/constant/constants.dart';
import 'package:virtual_aid/screens/login.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String message = "";
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();
  final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    child: logo, //this is the logo on the register screen
                  ),
                ),
                const Text(
                  "Register Account",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  child: Form(
                    key: _fromKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _name,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: primaryColor,
                            ),
                            labelText: 'Full Name',
                            hintText: 'Full Name',
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
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Please Enter Your Full Name ";
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(height: 20),
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
                          controller: _userName,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: primaryColor,
                            ),
                            labelText: 'Username',
                            hintText: 'Username',
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
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: _phone,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.call,
                              color: primaryColor,
                            ),
                            labelText: 'Phone Number',
                            hintText: 'Phone Number',
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
                              return "Please Enter Your Phone Number";
                            } else {
                              return null;
                            }
                          },
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
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: _confirmpassword,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.password,
                              color: primaryColor,
                            ),
                            labelText: 'Re Enter Password',
                            hintText: 'Re Enter Password',
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
                              return 'Please enter password';
                            }
                            if (value != _password.text) {
                              return 'Password does not match';
                            }
                            return null;
                          },
                        ),
                        Text(
                          message,
                          style: TextStyle(color: Colors.red),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(
                              Icons.check_rounded,
                              color: primaryColor,
                            ),
                            Text(
                                " By signing up you agree to our \n Terms of Service and Privacy Policy"),
                          ],
                        ),
                        Container(
                          height: 50.0,
                          width: 250.0,
                          margin: const EdgeInsets.all(50.0),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [primaryColor, primaryColor],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
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
                                setState(() {
                                  isLoading = false;
                                });
                              }
                              Future.delayed(const Duration(seconds: 5), () {
                                if (mounted) {
                                  setState(() {
                                    isLoading = false;
                                  });
                                }
                              });

                              if (_fromKey.currentState!.validate()) {
                                register();
                                print("Sucessful");
                              } else {
                                print("Unsucessful");
                              }
                              Future.delayed(const Duration(seconds: 5), () {
                                //asynchronous delay
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
                            child: const Center(
                              child: Text(
                                'Register',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    GestureDetector(
                      child: const Text(
                        "Login here",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const Login()));
                      },
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 1 / 7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future register() async {
    String name = _name.text;
    String email = _email.text;
    String password = _password.text;
    String username = _userName.text;
    String phone = _phone.text;

    //var url =
    //  '$kBackendURL/Registration/user_registration.php';
    var data = {
      'name': name,
      'email': email,
      'phone': phone,
      'userName': username,
      'password': password
    };

    print(data);
    var response = await http.post(
        Uri.parse("http://192.168.1.67/DoctorAppointment_API/signup.php"),
        body: json.encode(data),
        headers: {"Content-Type": "application/json"});
    var message = jsonDecode(response.body);
    print(message);

    if (response.statusCode == 200) {}
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Login()));
// Showing Alert Dialog with Response JSON Message.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(message),
          actions: <Widget>[
            ElevatedButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Login()));
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
      },
    );
  }
}
