import 'dart:async';

import 'package:ewallet/shared/styles.dart';
import 'package:ewallet/ui/pages/pages.dart';
import 'package:ewallet/utils/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(
        context,
        OnboadingPage.routeName,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBackgroundColor,
      body: Center(
        child: Container(
          width: 155,
          height: 50,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              '${assetImage}img_logo_dark.png',
            ),
          )),
        ),
      ),
    );
  }
}
