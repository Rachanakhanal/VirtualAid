import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_aid/screens/login.dart';

import '../screens/home_page.dart';
import 'shared_prefs.dart';

class Loader extends StatefulWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  final AuthService authService = AuthService();
  @override
  void initState() {
    super.initState();
    checkifAuthenticated();
  }

  checkifAuthenticated() async {
    await Future.delayed(const Duration(seconds: 3));
    var token = await authService.getToken();
    if (token != null) {
      Get.offAll(const HomePage());
    } else {
      Get.offAll(Login());
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
