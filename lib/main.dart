import 'package:ewallet/pages/pages.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.red,
        ),
      ),
      home: const HomePage(),
      onGenerateRoute: mainRoutes,
    );
  }
}
