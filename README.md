# demo

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

1) Created a firebase project and flutter project and linked my flutter project with my Firebase project by adding google service json file
    and dependencies in both build gradle.
2) Then added the packages which we need for Firebase and Hive in our project.
3) Created one Profile page for UI part and created UI With Fields like name,number,email,address and profile image.
4) Then added Getx State Management for smoothness and data passing.
5) Created FirebaseClass and called the data from firebase in that class.Same done for the hive for storing the data locally from firebase. 
6) Created one model of for hive data a model class.
7) After that in our Controller i put check if the local storage is empty then the data will set by firebase otherwise it will set by Hive which is our local storage.

8) At the end the i put UI in obx so it will update accordingly when the data get changed.
