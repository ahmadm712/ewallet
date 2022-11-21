import 'package:ewallet/shared/styles.dart';
import 'package:ewallet/ui/pages/sign_in/sign_in_page.dart';
import 'package:ewallet/ui/pages/sign_up/sign_up_set_profile_page.dart';
import 'package:ewallet/ui/widgets/buttons.dart';
import 'package:ewallet/ui/widgets/forms.dart';
import 'package:ewallet/utils/constants.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  static const String routeName = '/sign-up';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBackgroundColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 100,
                  bottom: 100,
                ),
                width: 155,
                height: 50,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('${assetImage}img_logo_light.png'))),
              ),
            ),
            Text(
              'Join Us to Unlock\nYour Growth',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomFormField(title: 'Full Name'),

                  const SizedBox(height: 16),
                  // * NOTE  Email Input
                  const CustomFormField(title: 'Email Addreses'),
                  const SizedBox(height: 16),
                  // * NOTE  Password Input
                  const CustomFormField(
                    title: 'Password',
                    obsecureText: true,
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  CustomFilledButton(
                    title: 'Continue',
                    onPresed: () {
                      Navigator.pushNamed(
                        context,
                        SignUpSetProfilePage.routeName,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
