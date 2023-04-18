import 'package:capital_app/ui/homepage/home_page.dart';
import 'package:capital_app/ui/recent_transactions/recent_txns_page.dart';
import 'package:flutter/material.dart';

class RouteNames {
  static const home = "home";
  static const savedCards = "savedCards";
}

mixin RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.savedCards:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => const RecentTxns(),
        );
      default:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (c) => const HomePage(),
        );
    }
  }
}
