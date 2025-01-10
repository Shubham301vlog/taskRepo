// lib/helpers/hive_helper.dart

import 'package:hive/hive.dart';

import 'HiveModelClass.dart';

class HiveHelper {
  static const String userBoxName = 'userData';

  // Save user data to Hive
  static Future<void> saveUserData(UserData userData) async {
    var box = await Hive.openBox<UserData>(userBoxName);
    await box.put(0, userData); // Assuming 0 as the key for the single user
  }

  // Retrieve user data from Hive
  static Future<UserData?> getUserData() async {
    var box = await Hive.openBox<UserData>(userBoxName);
    return box.get(0); // Get the user data by key 0
  }
}
