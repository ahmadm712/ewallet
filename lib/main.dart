import 'package:ewallet/shared/styles.dart';
import 'package:ewallet/ui/pages/pages.dart';
import 'package:ewallet/ui/pages/splash/splash_page.dart';
import 'package:ewallet/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ewallet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: kPurpleColor,
        ),
      ),
      home: const SplashScreen(),
      onGenerateRoute: mainRoutes,
    );
  }
}
