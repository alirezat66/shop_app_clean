import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:shop_online_clean/core/mocks/fixture/fixture_reader.dart';
import 'package:shop_online_clean/features/product_list/data/models/product_model.dart';
import 'package:shop_online_clean/features/product_list/domain/entities/product.dart';

void main() {
  const tProductModel =
      ProductModel(title: 'title', price: 1.24, imageSrc: 'imgScr', id: 1);
  test('should be a subclass of Entity', () {
    expect(tProductModel, isA<Product>());
  });
  group('from json', () {
    test('should return model when the from json called', () async {
      // arrangement
      final String productStr = fixture('product.json');
      //act
      final result = ProductModel.fromJson(productStr);
      //assert
      expect(result, equals(tProductModel));
    });
  });
}
