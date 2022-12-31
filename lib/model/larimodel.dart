

import 'dart:convert';



Larimodel larimodelFromJson(String str) => Larimodel.fromJson(json.decode(str));

String larimodelToJson(Larimodel data) => json.encode(data.toJson());

class Larimodel {
  Larimodel({
    this.message,
     this.meta,
  });

  dynamic message;
  Meta  meta;

  factory Larimodel.fromJson(Map<String, dynamic> json) => Larimodel(
    message: json["message"],
    meta: Meta.fromJson(json["meta"]),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "meta": meta.toJson(),
  };
}

class Meta {
  Meta({
     this.news,
     this.notifications,
     this.weather,
     this.rainfall,
  });

  List<News> news;
  List<News> notifications;
  List<News> weather;
  List<Rainfall> rainfall;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    news: List<News>.from(json["news"].map((x) => News.fromJson(x))),
    notifications: List<News>.from(json["notifications"].map((x) => News.fromJson(x))),
    weather: List<News>.from(json["weather"].map((x) => News.fromJson(x))),
    rainfall: List<Rainfall>.from(json["rainfall"].map((x) => Rainfall.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "news": List<dynamic>.from(news.map((x) => x.toJson())),
    "notifications": List<dynamic>.from(notifications.map((x) => x.toJson())),
    "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
    "rainfall": List<dynamic>.from(rainfall.map((x) => x.toJson())),
  };


}

class News {
  News({
    this.id,
     this.issueDate,
    this.isPrimary,
     this.title,
     this.description,
     this.language,
     this.reference,
     this.image,
     this.multimedia,
     this.type,
  });

  int id;
  DateTime issueDate;
  int isPrimary;
  String title;
  String description;
  Language language;
  String reference;
  String image;
  List<Multimedia> multimedia;
  String type;

  factory News.fromJson(Map<String, dynamic> json) => News(
    id: json["id"],
    issueDate: DateTime.parse(json["issue_date"]),
    isPrimary: json["is_primary"],
    title: json["title"],
    description: json["description"],
    // language: json["language"],
    language: languageValues.map[json["language"]],
    reference: json["reference"] == null ? null : json["reference"],
    image: json["image"] == null ? null : 'https://mobileapi.lari-leb.org/'+json["image"],
  //image: json["image"],
    multimedia: List<Multimedia>.from(json["multimedia"].map((x) => Multimedia.fromJson(x))),
    type: json["type"] == null ? null : json["type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "issue_date": issueDate.toIso8601String(),
    "is_primary": isPrimary,
    "title": title,
    "description": description,
    "language": languageValues.reverse[language],
    "reference": reference == null ? null : reference,
    "image": image == null ? null : ('https://mobileapi.lari-leb.org/'+image),
    "multimedia": List<dynamic>.from(multimedia.map((x) => x.toJson())),
    "type": type == null ? null : type,
  };
}

enum Language { AR }

final languageValues = EnumValues({
  "ar": Language.AR
});

class Multimedia {
  Multimedia({
     this.id,
     this.type,
     this.name,
  });

  int id;
  Type type;
  String name;

  factory Multimedia.fromJson(Map<String, dynamic> json) => Multimedia(
    id: json["id"],
   // type: json["type"],
    type: typeValues.map[json["type"]],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": typeValues.reverse[type],
    "name": name,
  };
}

enum Type { PICTURE }

final typeValues = EnumValues({
  "picture": Type.PICTURE
});



class Rainfall {
  Rainfall({
     this.id,
     this.nameArabic,
     this.currentDay,
     this.currentYear,
     this.lastYear,
     this.average,
     this.lastUpdated,
  });

  int id;
  String nameArabic;
  double currentDay;
  double currentYear;
  int lastYear;
  int average;
  DateTime lastUpdated;

  factory Rainfall.fromJson(Map<String, dynamic> json) => Rainfall(
    id: json["id"],
    nameArabic: json["name_arabic"],
    currentDay: json["current_day"].toDouble(),
    currentYear: json["current_year"].toDouble(),
    lastYear: json["last_year"],
    average: json["average"],
    lastUpdated: DateTime.parse(json["last_updated"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name_arabic": nameArabic,
    "current_day": currentDay,
    "current_year": currentYear,
    "last_year": lastYear,
    "average": average,
    "last_updated": lastUpdated.toIso8601String(),
  };
}

class EnumValues<T> {
   Map<String, T> map;
   Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }

}
