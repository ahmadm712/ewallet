import 'package:ewallet/ui/pages/pages.dart';
import 'package:flutter/material.dart';

var mainRoutes = (RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: (context) => const HomePage(),
      );
    case OnboadingPage.routeName:
      return MaterialPageRoute(
        builder: (context) => OnboadingPage(),
      );
    default:
      MaterialPageRoute(
        builder: (context) => const ErrorPage(),
      );
  }
};
