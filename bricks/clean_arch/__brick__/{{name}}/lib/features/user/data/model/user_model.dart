import 'package:{{name}}/features/user/domain/entity/user_entity.dart';

class UserModel extends User {
  const UserModel({
    required String name,
    required String token,
    required String phone,
  }) : super(
          name: name,
          token: token,
          phone: phone,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      token: json['token'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "token": token,
        "phone": phone,
      };
}
