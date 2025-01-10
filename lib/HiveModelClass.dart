// lib/models/user_data.dart

import 'package:hive/hive.dart';


@HiveType(typeId: 0) // typeId must be unique across all types in your app
class UserData {
  @HiveField(0) // unique field index for each property
  final String name;

  @HiveField(1)
  final String email;

  @HiveField(2)
  final String number;

  @HiveField(3)
  final String address;

  @HiveField(4)
  final String image;

  UserData({
    required this.name,
    required this.email,
    required this.number,
    required this.address,
    required this.image,
  });
}
