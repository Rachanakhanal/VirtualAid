import 'package:flutter/material.dart';
import 'package:virtual_aid/screens/splash.dart';
import 'constant/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Virtual Aid",
      theme: ThemeData(
        fontFamily: "Poppins",
        iconTheme: const IconThemeData(color: primaryColor),

        // ignore: prefer_const_constructors
        textTheme: TextTheme(
          bodyText1: const TextStyle(color: primaryColor),
          bodyText2: const TextStyle(color: textColor2),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
