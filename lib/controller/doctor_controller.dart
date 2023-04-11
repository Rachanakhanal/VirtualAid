import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../constant/constants.dart';
import '../models/doctor_model.dart';
import '../utils/api.dart';
import '../utils/shared_prefs.dart';

class DoctorController extends GetxController {
  var loading = false.obs;
  var selectedDoctor = Doctor(
          doctorId: "",
          name: "",
          phone: "",
          doctorCharge: "doctorCharge",
          hospitalId: "hospitalId",
          departmentId: "departmentId")
      .obs;

  //getting the category details by creating model
  var doctor = <Doctor>[].obs;

  @override
  void onInit() {
    super.onInit();
    get();
  }

  final AuthDoctor authDoctor = AuthDoctor();

  //GET categories from database
  get() async {
    var url = Uri.parse(GET_DOCTORS_API);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body); //as Map<String, dynamic>;
      if (jsonResponse["success"]) {
        var responseData = jsonResponse['data'];
        for (var i = 0; i < responseData.length; i++) {
          doctor.add(Doctor.fromJson(responseData[i]));
        }
        selectedDoctor.value = doctor.value[0];
        print(doctor);
        Get.back();
        showMessage(title: "Success", message: jsonResponse["message"]);
      } else {
        showMessage(
            title: "Error", message: jsonResponse["message"], isSuccess: false);
      }
    }
  }

  addDoctor(data) async {
    var loading;
    loading.value = true;
    // data['token'] = await authHospital.getToken();
    //print(data['token']);
    var url = Uri.parse(ADD_DOCTORS_API);
    // await Future.delayed(const Duration(seconds: 3));
    var response = await http.post(url, body: data);
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
}
