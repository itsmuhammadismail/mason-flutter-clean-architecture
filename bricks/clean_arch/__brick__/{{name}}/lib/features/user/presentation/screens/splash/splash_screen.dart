import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:{{name}}/features/user/presentation/screens/home/home_screen.dart';
import 'package:{{name}}/shared/routes/navigate.dart';

part 'widgets/body.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String id = "splash_screen";

  @override
  Widget build(BuildContext context) {
    void _onSuccess() {
      // if (context.read<UserCubit>().isLoggedIn()) {
      Navigate.next(context, HomeScreen.id);
      // } else {
      //   Navigate.next(context, LoginScreen.id);
      // }
    }

    void _navigateToNextScreen(VoidCallback onSuccess) async {
      await Future.delayed(const Duration(seconds: 1));
      onSuccess.call();
    }

    useEffect(() {
      _navigateToNextScreen(_onSuccess);
      return null;
    }, []);

    return Scaffold(
      body: Body(),
    );
  }
}
