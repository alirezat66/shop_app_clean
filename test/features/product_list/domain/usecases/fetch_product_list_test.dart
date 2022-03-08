import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shop_online_clean/features/product_list/domain/entities/product.dart';
import 'package:shop_online_clean/features/product_list/domain/repositories/product_list_repository.dart';
import 'package:shop_online_clean/features/product_list/domain/usecases/fetch_product_list.dart';

class MockProductListRepository extends Mock implements ProductListRepository {}

void main() {
  late FetchProductList usecase;
  late MockProductListRepository mockProductListRepository;
  late List<Product> tProducts;
  late int tPage;
  setUp(() {
    mockProductListRepository = MockProductListRepository();
    usecase = FetchProductList(repository: mockProductListRepository);
    tPage = 1;
    tProducts = const [
      Product(title: 'title', price: 1.25, imageSrc: 'imageSrc', id: 1),
      Product(title: 'title2', price: 2.25, imageSrc: 'imageSrc2', id: 2),
    ];
  });
  test('should get list of products from the repository', () async {
    when(mockProductListRepository.fetchAllProducts(tPage))
        .thenAnswer((_) async => Right(tProducts));
    final result = await usecase(tPage);
    expect(result, Right(tProducts));
    verify(mockProductListRepository.fetchAllProducts(tPage));
    verifyNoMoreInteractions(mockProductListRepository);
  });
}
