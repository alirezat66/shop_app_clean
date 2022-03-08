import 'package:flutter_test/flutter_test.dart';
import 'package:shop_online_clean/core/mocks/fixture/fixture_reader.dart';
import 'package:shop_online_clean/features/product_list/data/models/product_list_model.dart';
import 'package:shop_online_clean/features/product_list/data/models/product_model.dart';
import 'package:shop_online_clean/features/product_list/domain/entities/product.dart';

void main() {
  final list = ProductListModel(products: [
    const ProductModel(title: 'title', price: 1.24, imageSrc: 'imgScr', id: 1)
  ]);
  test('should be a subclass of Products list', () {
    expect(list.products[0], isA<Product>());
  });
  test('should return a list of products from json file', () {
    // prepare
    final String productsStr = fixture('products.json');
    //act
    final products = ProductListModel.fromJson(productsStr);
    //assert
    expect(products.products.length, 15);
  });
}
