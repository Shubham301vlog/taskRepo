// lib/models/user_data.g.dart



import 'package:hive/hive.dart';

import 'package:demo/HiveModelClass.dart';

class UserDataAdapter extends TypeAdapter<UserData> {
  @override
  final typeId = 0; // The same typeId as in your @HiveType annotation

  @override
  UserData read(BinaryReader reader) {
    return UserData(
      name: reader.read(),
      email: reader.read(),
      number: reader.read(),
      address: reader.read(),
      image: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, UserData obj) {
    writer.write(obj.name);
    writer.write(obj.email);
    writer.write(obj.number);
    writer.write(obj.address);
    writer.write(obj.image);
  }
}
