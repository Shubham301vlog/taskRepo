// lib/services/firebase_helper.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'HiveModelClass.dart';

class FirebaseHelper {
  static Future<UserData?> fetchDataFromFirebase() async {
    try {
      DocumentSnapshot snapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc('data')
          .get();
      debugPrint("Data---->$snapshot");
      if (snapshot.exists) {
        var data = snapshot.data() as Map<String, dynamic>;
        return UserData(
          name: data['name'] ?? 'No Name',
          email: data['email'] ?? 'No Email',
          number: data['mobile_no'] ?? 'No Number',
          address: data['address'] ?? 'No Address',
          image: data['image'] ?? 'No Image',
        );
      }
    } catch (e) {
      print("Error fetching data: $e");
    }
    return null;
  }
}
