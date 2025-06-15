// ignore_for_file: unused_field
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static late SharedPreferences _instance; // declare

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance(); // assignment
  }

  // todo save data
  static setBool(String key, bool value) {
    _instance.setBool(key, value);
  }

  // todo get data
  static getBool(String key) {
    return _instance.getBool(key) ?? false;
  }
}
