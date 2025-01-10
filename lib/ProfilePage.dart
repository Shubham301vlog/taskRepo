// lib/profile_page.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'DataController.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final UserController userController = Get.put(UserController());

  @override
  initState() {
    userController.loadUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Profile Image
                Obx(() {
                  return CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        userController.userData.value?.image.isNotEmpty == true ? NetworkImage(userController.userData.value!.image) : AssetImage('assets/default_profile.png') as ImageProvider,
                  );
                }),
                SizedBox(height: 20),

                // Name Field
                userTextField('Full Name', userController.userData.value?.name ?? ''),
                SizedBox(height: 15),

                // Email Field
                userTextField('Email', userController.userData.value?.email ?? ''),
                SizedBox(height: 15),

                // Mobile Field
                userTextField('Mobile Number', userController.userData.value?.number ?? ''),
                SizedBox(height: 15),

                // Address Field
                userTextField('Address', userController.userData.value?.address ?? '', maxLines: 3),
                SizedBox(height: 30),

                // Save Button
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to build text fields
  Widget userTextField(String label, String value, {int maxLines = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 16)),
        SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
          ),
          child: TextFormField(
            controller: TextEditingController(text: value),
            maxLines: maxLines,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            ),
          ),
        ),
      ],
    );
  }
}
