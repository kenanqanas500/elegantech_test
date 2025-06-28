// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter_application_1/app/features/products/model/active_offer_model.dart';
import 'package:flutter_application_1/app/features/products/model/available_at_model.dart';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  int id;
  String nameEn;
  String nameAr;
  int isViewable;
  int price;
  String descriptionEn;
  String descriptionAr;
  String mainMediaUrl;
  String unitOfMeasure;
  List<dynamic> media;
  List<AvailableAt> availableAt;
  ActiveOffer? activeOffer;

  ProductModel({
    required this.id,
    required this.nameEn,
    required this.nameAr,
    required this.isViewable,
    required this.price,
    required this.descriptionEn,
    required this.descriptionAr,
    required this.mainMediaUrl,
    required this.unitOfMeasure,
    required this.media,
    required this.availableAt,
    required this.activeOffer,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        nameEn: json["name_en"],
        nameAr: json["name_ar"],
        isViewable: json["is_viewable"],
        price: json["price"],
        descriptionEn: json["description_en"],
        descriptionAr: json["description_ar"],
        mainMediaUrl: json["main_media_url"],
        unitOfMeasure: json["unit_of_measure"],
        media: List<dynamic>.from(json["media"].map((x) => x)),
        availableAt: List<AvailableAt>.from(json["available_at"].map((x) => AvailableAt.fromJson(x))),
        activeOffer: json["active_offer"] != null ? ActiveOffer.fromJson(json["active_offer"]) : null,
      );

  get unit => null;

  Map<String, dynamic> toJson() => {
        "id": id,
        "name_en": nameEn,
        "name_ar": nameAr,
        "is_viewable": isViewable,
        "price": price,
        "description_en": descriptionEn,
        "description_ar": descriptionAr,
        "main_media_url": mainMediaUrl,
        "unit_of_measure": unitOfMeasure,
        "media": List<dynamic>.from(media.map((x) => x)),
        "available_at": List<dynamic>.from(availableAt.map((x) => x.toJson())),
        "active_offer": activeOffer?.toJson(),
      };
}
