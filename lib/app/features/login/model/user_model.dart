import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 1)
class UserModel extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String phoneNumber;

  @HiveField(2)
  int isActive;

  @HiveField(3)
  String fullName;

  @HiveField(4)
  String email;

  @HiveField(5)
  String type;

  @HiveField(6)
  String language;

  @HiveField(7)
  int storeId;

  UserModel({
    required this.id,
    required this.phoneNumber,
    required this.isActive,
    required this.fullName,
    required this.email,
    required this.type,
    required this.language,
    required this.storeId,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        phoneNumber: json["phone_number"],
        isActive: json["is_active"],
        fullName: json["full_name"],
        email: json["email"],
        type: json["type"],
        language: json["language"],
        storeId: json["store_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "phone_number": phoneNumber,
        "is_active": isActive,
        "full_name": fullName,
        "email": email,
        "type": type,
        "language": language,
        "store_id": storeId,
      };
}
