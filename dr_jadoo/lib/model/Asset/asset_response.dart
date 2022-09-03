import 'dart:convert';

import 'package:dr_jadoo/model/User/current_user.dart';
import 'package:dr_jadoo/model/model_utilities.dart';

class AssetResponse {
  const AssetResponse({
    required this.id,
    required this.createdBy,
    required this.updateBy,
    required this.name,
    required this.serialNumber,
    required this.model,
    required this.amount,
    required this.category,
    required this.categoryType,
    required this.purchaseDate,
    required this.manufacturedDate,
    required this.createdAt,
    required this.updateAt,
  });

  factory AssetResponse.fromJson(Map<String, dynamic> json) => AssetResponse(
        id: asT<int>(json['id'])!,
        createdBy:
            CurrentUser.fromJson(asT<Map<String, dynamic>>(json['created_by'])!),
        updateBy:
            CurrentUser.fromJson(asT<Map<String, dynamic>>(json['update_by'])!),
        name: asT<String>(json['name'])!,
        serialNumber: asT<String>(json['serial_number'])!,
        model: asT<String>(json['model'])!,
        amount: asT<int>(json['amount'])!,
        category: asT<String>(json['category'])!,
        categoryType: asT<String>(json['category_type'])!,
        purchaseDate: asT<String>(json['purchase_date'])!,
        manufacturedDate: asT<String>(json['manufactured_date'])!,
        createdAt: asT<String>(json['created_at'])!,
        updateAt: asT<String>(json['update_at'])!,
      );

  final int id;
  final CurrentUser createdBy;
  final CurrentUser updateBy;
  final String name;
  final String serialNumber;
  final String model;
  final int amount;
  final String category;
  final String categoryType;
  final String purchaseDate;
  final String manufacturedDate;
  final String createdAt;
  final String updateAt;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'created_by': createdBy,
        'update_by': updateBy,
        'name': name,
        'serial_number': serialNumber,
        'model': model,
        'amount': amount,
        'category': category,
        'category_type': categoryType,
        'purchase_date': purchaseDate,
        'manufactured_date': manufacturedDate,
        'created_at': createdAt,
        'update_at': updateAt,
      };
}
