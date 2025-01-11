# Profile Page with Firebase and Hive Integration in Flutter

## Project Overview

This project demonstrates the integration of Firebase and Hive in a Flutter application. The profile page UI allows users to fetch personal data such as name, number, email, address, and profile image the data which is stored in Firebase and locally in Hive, with GetX State Management used for smooth data handling and updates.

## Prerequisites
Before getting started, ensure that you have the following set up:

Flutter: Make sure Flutter is installed and set up on your machine.

Firebase Project: Create a Firebase project and configure it with your Flutter app by adding the google-services.json file to your Flutter project.

Dependencies: Add necessary dependencies for Firebase, Hive, GetX, etc., in the pubspec.yaml file.

#### 1. Create and Configure Firebase Project
   
* Go to the Firebase Console.

* Create a new project and register your app.

* Add your Android app to Firebase and download the google-services.json file.

* Add the google-services.json file to your Flutter project under android/app/ directory.

#### 2. Add Firebase Dependencies

Add Firebase dependencies to your pubspec.yaml file:

firebase_core:

cloud_firestore: 

firebase_data_connect: ^0.1.2+6

#### 3. Configure Firebase in android/build.gradle and android/app/build.gradle

 ##### Make sure you configure Firebase in your Android project. 
  ###### For android/build.gradle:
 
  classpath 'com.google.gms:google-services:latest_version'

  ###### For android/app/build.gradle:
  
  apply plugin: 'com.google.gms.google-services'

#### 4. Add Hive dependencies
hive_flutter: ^1.1.0

path_provider: ^2.1.5

hive: ^2.0.

#### 5. Add State Management Dependency

 get: ^4.6.5

## App Structure
###### 1. main.dart: 
* This is the Starting point of application.
* Initialize firebase and hive by writing this methods in void main() function
  inside WidgetsFlutterBinding.ensureInitialized()
   1) await Firebase.initializeApp();
   2) await Hive.initFlutter(appDocumentDir.path);
* Register your adapter for data model

###### 2. Profile UI-ProfilePage.dart
* This is screen which contains one image container and textfields for email,name,mobile number and address.

###### 3. Getx Controller-DataController.dart
* This Controller class will manage the data coming from firebase or coming from hive.

###### 4. Firebase class-FirebaseClass.dart
* This is the class which will interact with firebase for data which to be shown on UI Screen.

###### 5. Hive class-HiveClass.dart
* Hive class is the class which will contains methods which will savedata and pass data when needed.

###### 6.Model Class-HiveModelClass.dart
* This model class is created for the fields which is going to be stored in local storage.

###### 7.Adapter Class-UserDataAdapter.dart
* This is the class releated with model class and containes the method of read and write with typeId.


## Steps to run app
* Clone this repo by using the link:- https://github.com/Shubham301vlog/taskRepo
* Add the dependecies if needed and run command flutter pub get
* Run the app
   
            

