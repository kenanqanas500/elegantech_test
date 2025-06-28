class ActiveOffer {
  int id;
  String type;
  int value;
  DateTime startAt;
  DateTime endAt;

  ActiveOffer({
    required this.id,
    required this.type,
    required this.value,
    required this.startAt,
    required this.endAt,
  });

  factory ActiveOffer.fromJson(Map<String, dynamic> json) => ActiveOffer(
        id: json["id"],
        type: json["type"],
        value: json["value"],
        startAt: DateTime.parse(json["start_at"]),
        endAt: DateTime.parse(json["end_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "value": value,
        "start_at": startAt.toIso8601String(),
        "end_at": endAt.toIso8601String(),
      };
}
