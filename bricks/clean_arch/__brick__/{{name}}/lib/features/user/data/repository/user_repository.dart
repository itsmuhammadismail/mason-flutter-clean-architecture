import 'package:dartz/dartz.dart';
import 'package:{{name}}/features/user/domain/entity/user_entity.dart';
import 'package:{{name}}/shared/params/login_params.dart';
import 'package:{{name}}/shared/error/failures.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> login(LoginParams params);
}
