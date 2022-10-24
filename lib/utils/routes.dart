import 'package:ewallet/ui/pages/pages.dart';
import 'package:ewallet/ui/pages/sign_in/sign_in_page.dart';
import 'package:ewallet/ui/pages/sign_up/sign_up_page.dart';
import 'package:flutter/material.dart';

var mainRoutes = (RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: (context) => const HomePage(),
      );
    case OnboadingPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const OnboadingPage(),
      );
    case SignInPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const SignInPage(),
      );
    case SignUpPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const SignUpPage(),
      );
    default:
      MaterialPageRoute(
        builder: (context) => const ErrorPage(),
      );
  }
};
