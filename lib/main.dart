import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:khalti/khalti.dart';
import 'package:virtual_aid/controller/hospital_controller.dart';
import 'package:virtual_aid/screens/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Get.put(Authentication()); //fetches token
  Get.put(HospitalController()); // fetches categories
  //Get.put(ServiceController());
  await Khalti.init(
    publicKey: 'test_public_key_8697f806a5404a599edded181fd4fcf3',
    enabledDebugging: false,
  );
  runApp(const GetMaterialApp(
      // navigatorKey: navigatorKey,
      //   supportedLocales:  [
      //     Locale('en', 'US'),
      //     Locale('ne', 'NP'),
      //   ],
      //   localizationsDelegates: const [
      //     KhaltiLocalizations.delegate,
      //   ],

      home: Login()));
}
