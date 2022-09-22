import 'package:{{name}}/features/user/data/model/user_model.dart';
import 'package:{{name}}/features/user/domain/entity/user_entity.dart';
import 'package:{{name}}/shared/abstract/mapper/mapper.dart';

class UserMapper extends Mapper<User, UserModel> {
  @override
  User mapModeltoEntity(UserModel model) {
    User user = User(
      name: model.name,
      token: model.token,
      phone: model.phone,
    );
    return user;
  }
}
