import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name}}/features/user/data/data_source/user_remote_data_source.dart';
import 'package:{{name}}/features/user/data/mapper/user_mapper.dart';
import 'package:{{name}}/features/user/domain/repository/user_repository_impl.dart';
import 'package:{{name}}/features/user/domain/usecase/login_usecase.dart';

class UserRepositoryProviders {
  static List<RepositoryProvider> providers = [
    // Login
    RepositoryProvider<LoginUseCase>(
      create: (context) => LoginUseCase(
        repository: UserRepositoryImpl(
          userMapper: UserMapper(),
          userRemoteDataSource: UserRemoteDataSource(),
        ),
      ),
    ),
  ];
}
