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

1) I created a Firebase project and a Flutter project, then linked the two by adding the google-services.json file and the necessary dependencies in both build.gradle files.
2) I added the required packages for Firebase and Hive in the Flutter project.
3) I developed a Profile page with UI components, including fields for name, phone number, email, address, and a profile image.
4) I implemented GetX for state management to ensure smooth data handling and seamless data passing between different parts of the app.
5) I created a FirebaseHelper class to fetch data from Firestore, and similarly, I created a HiveHelper class to store the data locally using Hive.
6) I designed a model class for storing data in Hive.
7) In the controller, I added a check to see if the local storage (Hive) is empty. If it is, data is fetched from Firebase; otherwise, the data is fetched from Hive, which serves as the local storage.
8) Finally, I wrapped the UI in an Obx widget so that it updates automatically whenever the data changes.
