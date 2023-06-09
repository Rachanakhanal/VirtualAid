import 'package:shared_preferences/shared_preferences.dart';

//this class uses shared preference package to store and get token from API
class AuthHospital {
  late SharedPreferences prefs;

  //save token
  Future<bool?> saveToken(String token) async {
    prefs = await SharedPreferences.getInstance();
    return prefs.setString('token', token);
  }

  //get token
  Future<String?> getToken() async {
    prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  //remove token
  Future<bool> removeToken() async {
    prefs = await SharedPreferences.getInstance();
    return prefs.remove('token');
  }
}

class AuthDoctor {
  late SharedPreferences prefs;

  //save token
  Future<bool?> saveToken(String token) async {
    prefs = await SharedPreferences.getInstance();
    return prefs.setString('token', token);
  }

  //get token
  Future<String?> getToken() async {
    prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  //remove token
  Future<bool> removeToken() async {
    prefs = await SharedPreferences.getInstance();
    return prefs.remove('token');
  }
}

class AuthDepartment {
  late SharedPreferences prefs;

  //save token
  Future<bool?> saveToken(String token) async {
    prefs = await SharedPreferences.getInstance();
    return prefs.setString('token', token);
  }

  //get token
  Future<String?> getToken() async {
    prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  //remove token
  Future<bool> removeToken() async {
    prefs = await SharedPreferences.getInstance();
    return prefs.remove('token');
  }
}
