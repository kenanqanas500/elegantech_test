import 'package:flutter_application_1/app/features/products/model/area_model.dart';
import 'package:flutter_application_1/app/features/login/model/user_model.dart';

class AvailableAt {
  UserModel user;
  Area area;
  int isAvailable;

  AvailableAt({
    required this.user,
    required this.area,
    required this.isAvailable,
  });

  factory AvailableAt.fromJson(Map<String, dynamic> json) => AvailableAt(
        user: UserModel.fromJson(json["user"]),
        area: Area.fromJson(json["area"]),
        isAvailable: json["is_available"],
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "area": area.toJson(),
        "is_available": isAvailable,
      };
}
