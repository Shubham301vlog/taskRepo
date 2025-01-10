// lib/controllers/user_controller.dart

import 'package:get/get.dart';

import 'FirebaseClass.dart';
import 'HiveClass.dart';
import 'HiveModelClass.dart';

class UserController extends GetxController {
  Rx<UserData?> userData = Rx<UserData?>(null);

  Future<void> loadUserData() async {
    var storedData = await HiveHelper.getUserData();
    if (storedData != null) {
      userData.value = storedData;
    } else {
      // If no data in Hive, fetch from Firebase
      var fetchedData = await FirebaseHelper.fetchDataFromFirebase();
      if (fetchedData != null) {
        userData.value = fetchedData;
        await HiveHelper.saveUserData(fetchedData);
      }
    }
  }

  Future<void> updateUserData(UserData updatedUserData) async {
    await HiveHelper.saveUserData(updatedUserData);
    userData.value = updatedUserData;
  }
}
