import 'package:{{name}}/features/user/data/model/user_model.dart';
import 'package:{{name}}/shared/network/network.dart';
import 'package:{{name}}/shared/params/login_params.dart';

class UserRemoteDataSource {
  Future<UserModel> login(LoginParams params) async {
    Map<String, dynamic> data = {
      "user_name": params.username,
      "password": params.password,
    };

    try {
      var res = await NetworkHelper.request(
        method: 'POST',
        url: 'auth/login',
        data: data,
      );

      UserModel user = UserModel.fromJson(res);
      print(user);
      return user;
    } catch (e) {
      rethrow;
    }
  }
}
