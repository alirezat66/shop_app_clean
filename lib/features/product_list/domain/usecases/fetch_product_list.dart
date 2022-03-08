import 'package:dartz/dartz.dart';

import 'package:shop_online_clean/core/error/failures.dart';
import 'package:shop_online_clean/core/usecases/general_use_case.dart';
import 'package:shop_online_clean/features/product_list/domain/entities/product.dart';
import 'package:shop_online_clean/features/product_list/domain/repositories/product_list_repository.dart';

class FetchProductList implements UseCase<List<Product>, int> {
  final ProductListRepository repository;
  FetchProductList({
    required this.repository,
  });
  @override
  Future<Either<Failure, List<Product>>?> call(int page) async {
    return await repository.fetchAllProducts(page);
  }
}
