import 'package:ewallet/ui/pages/pages.dart';
import 'package:flutter/material.dart';

var mainRoutes = (RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: (context) => const HomePage(),
      );
    default:
      MaterialPageRoute(
        builder: (context) => const ErrorPage(),
      );
  }
};
