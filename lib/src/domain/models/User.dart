import 'package:flutter_application_2/src/domain/models/Role.dart';

class User {
  int? id;
  String name;
  String lastname;
  String? email;
  String? password;
  String phone;
  String? image;
  String? notificationToken;
  List<Role>? roles;

  User({
    this.id,
    required this.name,
    required this.lastname,
    this.email,
    this.password,
    required this.phone,
    this.image,
    this.notificationToken,
    this.roles,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"] ?? 0,
        name: json["name"],
        lastname: json["lastname"],
        email: json["email"],
        phone: json["phone"],
        image: json["image"],
        password: json["password"] ?? '',
        notificationToken: json["notification_token"] ?? '',
        roles: json["roles"] != null
            ? List<Role>.from(json["roles"].map((x) => Role.fromJson(x)))
            : [],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "lastname": lastname,
        "email": email,
        "phone": phone,
        "image": image,
        "notification_token": notificationToken,
        "roles": roles != null
            ? List<dynamic>.from(roles!.map((x) => x.toJson()))
            : [],
      };
}
