import 'dart:convert';

import 'package:shop_online_clean/features/product_list/domain/entities/product.dart';

class ProductModel extends Product {
  const ProductModel({
    required String title,
    required double price,
    required String imageSrc,
    required int id,
  }) : super(title: title, price: price, imageSrc: imageSrc, id: id);

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      title: map['title'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      imageSrc: map['imageSrc'] ?? '',
      id: map['id']?.toInt() ?? 0,
    );
  }

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));
}
