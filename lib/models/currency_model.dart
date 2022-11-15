// To parse this JSON data, do
//
//     final currencyModel = currencyModelFromJson(jsonString);

import 'dart:convert';

CurrencyModel currencyModelFromJson(String str) => CurrencyModel.fromJson(json.decode(str));

String currencyModelToJson(CurrencyModel data) => json.encode(data.toJson());

class CurrencyModel {
  CurrencyModel({
    this.success,
    this.timestamp,
    this.base,
    this.date,
    this.rates,
  });

  bool? success;
  int? timestamp;
  String? base;
  DateTime? date;
  Map<String, double>? rates;


  factory CurrencyModel.fromJson(Map<String, dynamic> json) => CurrencyModel(
    success: json["success"],
    timestamp: json["timestamp"],
    base: json["base"],
    date: DateTime.parse(json["date"]),
    rates: Map.from(json["rates"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "timestamp": timestamp,
    "base": base,
    "date": "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
    "rates": Map.from(rates!).map((k, v) => MapEntry<String, dynamic>(k, v)),
  };
}
