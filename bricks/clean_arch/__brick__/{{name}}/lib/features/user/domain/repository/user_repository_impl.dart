import 'package:dartz/dartz.dart';
import 'package:{{name}}/features/user/data/data_source/user_remote_data_source.dart';
import 'package:{{name}}/features/user/data/mapper/user_mapper.dart';
import 'package:{{name}}/features/user/data/model/user_model.dart';
import 'package:{{name}}/features/user/data/repository/user_repository.dart';
import 'package:{{name}}/features/user/domain/entity/user_entity.dart';
import 'package:{{name}}/shared/params/login_params.dart';
import 'package:{{name}}/shared/error/failures.dart';

class UserRepositoryImpl extends UserRepository {
  late UserRemoteDataSource _remoteDataSource;
  late UserMapper _mapper;

  UserRepositoryImpl({
    required UserRemoteDataSource userRemoteDataSource,
    required UserMapper userMapper,
  }) {
    _remoteDataSource = userRemoteDataSource;
    _mapper = userMapper;
  }

  @override
  Future<Either<Failure, User>> login(LoginParams params) async {
    try {
      UserModel userModel = await _remoteDataSource.login(params);

      User result = _mapper.mapModeltoEntity(userModel);

      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
