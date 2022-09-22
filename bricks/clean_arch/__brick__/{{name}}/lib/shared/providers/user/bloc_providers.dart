import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name}}/features/user/presentation/cubits/user/user_cubit.dart';
import 'package:{{name}}/features/user/domain/usecase/login_usecase.dart';

class UserBlocProviders {
  static List<BlocProvider> providers = [
    // Login
    BlocProvider<UserCubit>(
      create: (context) => UserCubit(
        loginUseCase: context.read<LoginUseCase>(),
      ),
    ),
  ];
}
