import 'package:dartz/dartz.dart';
import 'package:{{name}}/shared/error/failures.dart';

abstract class UseCase<T, P> {
  Future<Either<Failure, T>> call(P params);
}
