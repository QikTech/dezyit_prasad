// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<ShareModel> shareModelFromJson(String str) => List<ShareModel>.from(json.decode(str).map((x) => ShareModel.fromJson(x)));

String shareModelToJson(List<ShareModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ShareModel {
  ShareModel({
    this.mainModuleTitle,
    this.data,
  });

  String? mainModuleTitle;
  List<ShareModelData>? data;

  factory ShareModel.fromJson(Map<String, dynamic> json) => ShareModel(
    mainModuleTitle: json["mainModuleTitle"],
    data: List<ShareModelData>.from(json["data"].map((x) => ShareModelData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "mainModuleTitle": mainModuleTitle,
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class ShareModelData {
  ShareModelData({
    this.title,
    this.value,
  });

  String? title;
  bool? value;

  factory ShareModelData.fromJson(Map<String, dynamic> json) => ShareModelData(
    title: json["title"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "value": value,
  };
}
