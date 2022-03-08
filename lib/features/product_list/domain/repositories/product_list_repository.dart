import 'package:dartz/dartz.dart';
import 'package:shop_online_clean/core/error/failures.dart';
import 'package:shop_online_clean/features/product_list/domain/entities/product.dart';

abstract class ProductListRepository {
  Future<Either<Failure, Product>>? fetchAllProducts(int page, int perPage);
}
