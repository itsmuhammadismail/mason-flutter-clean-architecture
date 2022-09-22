import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name}}/features/user/presentation/screens/Splash/splash_screen.dart';
import 'package:{{name}}/shared/providers/bloc_providers.dart';
import 'package:{{name}}/shared/providers/repository_providers.dart';
import 'package:{{name}}/shared/route_aware/route_observer.dart';
import 'package:{{name}}/shared/routes/routes.dart';
import 'package:{{name}}/shared/theme/theme_data.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MultiRepositoryProvider(
      providers: RepositoryProviders.providers,
      child: MultiBlocProvider(
        providers: BlocProviders.providers,
        child: MaterialApp(
          title: '{{name.mustacheCase()}}',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.themeData(),
          initialRoute: SplashScreen.id,
          routes: Routes.routes,
          navigatorObservers: [routeObserver],
        ),
      ),
    );
  }
}