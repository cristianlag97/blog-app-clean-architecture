import 'package:blog_app/core/common/entities/user.dart';

class UserModel extends User {
  UserModel({
    required super.name,
    required super.email,
    required super.id,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json['name'] ?? '',
        email: json['email'] ?? '',
        id: json['id'] ?? '',
      );

  UserModel copyWith({
    String? id,
    String? name,
    String? email,
  }) =>
      UserModel(
        name: name ?? this.name,
        email: email ?? this.email,
        id: id ?? this.id,
      );
}
