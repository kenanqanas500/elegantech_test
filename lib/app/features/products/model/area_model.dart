class Area {
  int id;
  String nameAr;
  String nameEn;

  Area({
    required this.id,
    required this.nameAr,
    required this.nameEn,
  });

  factory Area.fromJson(Map<String, dynamic> json) => Area(
        id: json["id"],
        nameAr: json["name_ar"],
        nameEn: json["name_en"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name_ar": nameAr,
        "name_en": nameEn,
      };
}
