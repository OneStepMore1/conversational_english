// To parse this JSON data, do
//
//     final mUserInfo = mUserInfoFromJson(jsonString);

import 'dart:convert';

MUserInfo mUserInfoFromJson(String str) => MUserInfo.fromJson(json.decode(str));

String mUserInfoToJson(MUserInfo data) => json.encode(data.toJson());

class MUserInfo {
  final bool? success;
  final MUser? data;
  final String? message;

  MUserInfo({
    this.success,
    this.data,
    this.message,
  });

  factory MUserInfo.fromJson(Map<String, dynamic> json) => MUserInfo(
        success: json["success"],
        data: json["data"] == null ? null : MUser.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data?.toJson(),
        "message": message,
      };
}

class MUser {
  final String? email;
  final String? picture;
  final String? firstName;
  final String? lastName;
  final String? isPremium;
  final dynamic runningPackage;

  MUser({
    this.email,
    this.picture,
    this.firstName,
    this.lastName,
    this.isPremium,
    this.runningPackage,
  });

  factory MUser.fromJson(Map<String, dynamic> json) => MUser(
        email: json["email"],
        picture: json["picture"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        isPremium: json["isPremium"],
        runningPackage: json["runningPackage"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "picture": picture,
        "firstName": firstName,
        "lastName": lastName,
        "isPremium": isPremium,
        "runningPackage": runningPackage,
      };
}
