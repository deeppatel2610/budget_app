import 'dart:typed_data';

class UserModel {
  String? name, phone, email;
  Uint8List? img;

  UserModel({
    required this.img,
    required this.phone,
    required this.email,
    required this.name,
  });

  factory UserModel.fromMap(Map m1) {
    return UserModel(
        img: m1['image'],
        phone: m1['phone'],
        email: m1['email'],
        name: m1['name']);
  }
}
