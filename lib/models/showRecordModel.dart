// To parse this JSON data, do
//
//     final showRecord = showRecordFromJson(jsonString);

import 'dart:convert';

ShowRecord showRecordFromJson(String str) => ShowRecord.fromJson(json.decode(str));

String showRecordToJson(ShowRecord data) => json.encode(data.toJson());

class ShowRecord {
  ShowRecord({
    this.result,
  });

  List<Result>? result;

  factory ShowRecord.fromJson(Map<String, dynamic> json) => ShowRecord(
    result: List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "result": List<dynamic>.from(result!.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    this.id,
    this.stdname,
    this.email,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? stdname;
  String? email;
  String? createdAt;
  String? updatedAt;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["id"],
    stdname: json["stdname"],
    email: json["email"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "stdname": stdname,
    "email": email,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
