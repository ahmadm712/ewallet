import 'package:ewallet/shared/styles.dart';
import 'package:ewallet/ui/pages/pages.dart';
import 'package:ewallet/ui/pages/sign_up/sign_up_page.dart';
import 'package:ewallet/ui/widgets/buttons.dart';
import 'package:ewallet/ui/widgets/forms.dart';
import 'package:ewallet/utils/constants.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  static const String routeName = '/signin';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
              'Sign in &\nGrow Your Finance',
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
                  // * NOTE  Email Input
                  const CustomFormField(title: 'Email Addreses'),
                  const SizedBox(height: 16),
                  // * NOTE  Password Input
                  const CustomFormField(
                    title: 'Password',
                    obsecureText: true,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Forgot Password',
                        style: blueTextStyle,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomFilledButton(
                    title: 'Sign In',
                    onPresed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        HomePage.routeName,
                        (route) => false,
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextButton(
              title: 'Create New Account',
              onPresed: () {
                Navigator.pushNamed(context, SignUpPage.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
