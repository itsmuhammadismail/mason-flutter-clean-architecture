import 'package:dartz/dartz.dart';
import 'package:{{name}}/features/user/domain/entity/user_entity.dart';
import 'package:{{name}}/features/user/domain/repository/user_repository_impl.dart';
import 'package:{{name}}/shared/error/failures.dart';
import 'package:{{name}}/shared/params/login_params.dart';
import 'package:{{name}}/shared/abstract/usecase/usecase.dart';

class LoginUseCase extends UseCase<User, LoginParams> {
  final UserRepositoryImpl repository;

  LoginUseCase({required this.repository});

  @override
  Future<Either<Failure, User>> call(LoginParams params) {
    return repository.login(params);
  }
}
