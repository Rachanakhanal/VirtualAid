import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:virtual_aid/screens/login.dart';

import '../constant/constants.dart';
import '../utils/api.dart';
import '../utils/loader.dart';
import '../utils/shared_prefs.dart';

class Authentication extends GetxController {
  final authHospital = AuthHospital();

  login(data) async {
    var url = Uri.parse(LOGIN_API);
    var response = await http.post(url, body: data);
    if (response.statusCode == 200) {
      // Converting json response into Map (list with key and its value)
      var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
      if (jsonResponse["success"]) {
        //when success is true save token in ROM
        // await AuthHospital.saveToken(jsonResponse["token"]);
        Get.offAll(const Loader());
        showMessage(
            title: "Success",
            message: jsonResponse["message"],
            isSuccess: true);
      } else {
        showMessage(
            title: "Error", message: jsonResponse["message"], isSuccess: false);
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  signup(data) async {
    var url = Uri.parse(SIGNUP_API);
    var response = await http.post(url, body: data);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
      if (jsonResponse["success"]) {
        Get.offAll(const Login());
        showMessage(
            title: "Success",
            message: jsonResponse["message"],
            isSuccess: true);
      } else {
        showMessage(
            title: "Error", message: jsonResponse["message"], isSuccess: false);
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
// logout() async {
//     var url = Uri.parse(LOGOUT_API);
//     var token_ = await AuthHospital.getToken();
//     var response = await http.post(url, body: {"token": token_});
//     if (response.statusCode == 200) {
//       var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
//       if (jsonResponse["success"]) {
//         await authService.removeToken();
//         Get.offAll(const Loader());
//         showMessage(
//             title: "Success",
//             message: jsonResponse["message"],
//             isSuccess: true);
//       } else {
//         showMessage(
//             title: "Error", message: jsonResponse["message"], isSuccess: false);
//       }
//     } else {
//       print('Request failed with status: ${response.statusCode}.');
//     }
//   }
// }