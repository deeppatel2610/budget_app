import 'dart:typed_data';

class UserModel {
  String? name, phone, email, password;
  int? isCheck;
  Uint8List? img;

  UserModel({
    required this.img,
    required this.phone,
    required this.email,
    required this.name,
    required this.password,
    required this.isCheck,
  });

  factory UserModel.fromMap(Map m1) {
    return UserModel(
      img: m1['image'],
      phone: m1['phone'],
      email: m1['email'],
      name: m1['name'],
      password: m1['password'],
      isCheck: m1['isCheck'],
    );
  }
}
