import 'package:demo/ProfilePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'HiveModelClass.dart';
import 'UserDataAdapter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyA0BL-RDNB7T9uYsNMIr3axEA0PdZFArJk',
        appId: '1:605442774230:android:70af59c413b32a7313a577',
        messagingSenderId: 'sendid',
        projectId: 'taskproj-14df8',
        storageBucket: 'taskproj-14df8.firebasestorage.app',
      ));
  final appDocumentDir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(appDocumentDir.path);

  Hive.registerAdapter(UserDataAdapter());  // Register the adapter

  await Hive.openBox<UserData>('userData');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  ProfilePage(),
    );
  }
}

