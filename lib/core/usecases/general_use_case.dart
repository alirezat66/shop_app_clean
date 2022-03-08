import 'package:dartz/dartz.dart';
import 'package:shop_online_clean/core/error/failures.dart';

abstract class UseCase<T, Params> {
  Future<Either<Failure, T>?> call(Params params);
}
