import 'dart:convert';

MActiveModels mActiveModelsFromJson(String str) => MActiveModels.fromJson(json.decode(str));

class MActiveModels {
  final bool? success;
  final List<MActiveModel>? data;
  final String? message;

  MActiveModels({
    this.success,
    this.data,
    this.message,
  });

  factory MActiveModels.fromJson(Map<String, dynamic> json) => MActiveModels(
        success: json["success"],
        data: json["data"] == null ? [] : List<MActiveModel>.from(json["data"]!.map((x) => MActiveModel.fromJson(x))),
        message: json["message"],
      );
}

class MActiveModel {
  final String? id;
  final String? title;
  final String? description;
  final String? icon;
  final String? slug;
  final String? type;

  MActiveModel({
    this.id,
    this.title,
    this.description,
    this.icon,
    this.slug,
    this.type,
  });

  factory MActiveModel.fromJson(Map<String, dynamic> json) => MActiveModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        icon: json["icon"],
        slug: json["slug"],
        type: json["type"],
      );
}
