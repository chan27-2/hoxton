import 'package:capital_app/bloc/user/user_bloc.dart';
import 'package:capital_app/service/dio_config.dart';
import 'package:capital_app/ui/homepage/home_page.dart';
import 'package:capital_app/ui/routes.dart';
import 'package:capital_app/utils/constants.dart';
import 'package:capital_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  MyDio().createDioInstance();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(
          lazy: false,
          create: (BuildContext context) => UserBloc()..add(GetAllUserNames()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hoxton',
      theme: myTheme,
      navigatorKey: navigatorKey,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyScrollBehavior(),
          child: child!,
        );
      },
      onGenerateRoute: RouteGenerator.generateRoutes,
      navigatorObservers: [routeObserver],
      home: HomePage(),
    );
  }
}
