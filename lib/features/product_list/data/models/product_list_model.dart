import 'dart:convert';

import 'package:shop_online_clean/features/product_list/data/models/product_model.dart';

class ProductListModel {
  List<ProductModel> products;
  ProductListModel({
    required this.products,
  });

  ProductListModel copyWith({
    List<ProductModel>? products,
  }) {
    return ProductListModel(
      products: products ?? this.products,
    );
  }

  factory ProductListModel.fromMap(Map<String, dynamic> map) {
    return ProductListModel(
      products: List<ProductModel>.from(
          map['products']?.map((x) => ProductModel.fromMap(x))),
    );
  }

  factory ProductListModel.fromJson(String source) =>
      ProductListModel.fromMap(json.decode(source));
}
