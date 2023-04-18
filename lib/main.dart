import 'package:capital_app/ui/homepage/home_page.dart';
import 'package:capital_app/ui/routes.dart';
import 'package:capital_app/utils/constants.dart';
import 'package:capital_app/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
