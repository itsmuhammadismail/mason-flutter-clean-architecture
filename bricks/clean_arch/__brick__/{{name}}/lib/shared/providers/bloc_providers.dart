import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name}}/shared/providers/user/bloc_providers.dart';

class BlocProviders {
  static List<BlocProvider> providers = [
    ...UserBlocProviders.providers,
  ];
}
