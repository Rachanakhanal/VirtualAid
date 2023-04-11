import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:virtual_aid/models/hospital_model.dart';
import 'package:virtual_aid/utils/api.dart';
import 'package:virtual_aid/utils/shared_prefs.dart';

import '../constant/constants.dart';

class HospitalController extends GetxController {
  var loading = false.obs;
  //getting the Hospital details by creating model
  var hospital = <Hospital>[].obs;
  final AuthHospital authService = AuthHospital();

  @override
  // onInit method is runned first in this class
  void onInit() {
    super.onInit();
    getHospital();
  }

  final AuthHospital authHospital = AuthHospital();

  addHospital(data) async {
    loading.value = true;
    // data['token'] = await authHospital.getToken();
    //print(data['token']);
    var url = Uri.parse(ADD_HOSPITALS_API);
    // await Future.delayed(const Duration(seconds: 3));
    var response = await http.post(url, body: json.encode(data));
    loading.value = false;
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
      if (jsonResponse["success"]) {
        Get.back();
        showMessage(title: "Success", message: jsonResponse["message"]);
      } else {
        showMessage(
            title: "Error", message: jsonResponse["message"], isSuccess: false);
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  //GET hospitals from database
  getHospital() async {
    var url = Uri.parse(GET_HOSPITALS_API);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
      if (jsonResponse["success"]) {
        hospital.value = (jsonResponse["data"] as List)
            .map((e) => Hospital.fromJson(e))
            .toList();

        // var responseData = jsonResponse['data'];
        // for (var i = 0; i < responseData.length; i++) {
        //   categories.add(Category.fromJson(responseData[i]));
        // }
        Get.back();
        showMessage(title: "Success", message: jsonResponse["message"]);
      } else {
        showMessage(
            title: "Error", message: jsonResponse["message"], isSuccess: false);
      }
    }
  }
}
