import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:{{name}}/features/user/domain/entity/user_entity.dart';
import 'package:{{name}}/features/user/domain/usecase/login_usecase.dart';
import 'package:{{name}}/shared/error/failures.dart';
import 'package:{{name}}/shared/params/login_params.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> with HydratedMixin {
  final LoginUseCase loginUseCase;

  UserCubit({
    required this.loginUseCase,
  }) : super(UserState.initial());

  Future<void> login(String username, String password) async {
    emit(state.copyWith(status: UserStatus.loading));

    Either<Failure, User> user = await loginUseCase.call(
      LoginParams(
        username: username,
        password: password,
      ),
    );

    user.fold(
      (Failure failure) {
        emit(
          state.copyWith(
            status: UserStatus.error,
          ),
        );
      },
      (User user) {
        emit(
          state.copyWith(
            status: UserStatus.loaded,
            user: user,
          ),
        );
      },
    );
  }

  void logout() {
    emit(
      state.copyWith(
        status: UserStatus.initial,
        user: User.initial(),
      ),
    );
  }

  @override
  UserState? fromJson(Map<String, dynamic> json) {
    return UserState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(UserState state) {
    return state.toMap();
  }
}
