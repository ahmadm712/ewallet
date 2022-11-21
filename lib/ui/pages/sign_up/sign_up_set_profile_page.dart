import 'package:ewallet/shared/styles.dart';
import 'package:ewallet/ui/pages/sign_up/sign_up_set_docs_page.dart';
import 'package:ewallet/ui/widgets/buttons.dart';
import 'package:ewallet/ui/widgets/forms.dart';
import 'package:ewallet/utils/constants.dart';
import 'package:flutter/material.dart';

class SignUpSetProfilePage extends StatefulWidget {
  const SignUpSetProfilePage({super.key});

  static const String routeName = '/signup-setprofle';

  @override
  State<SignUpSetProfilePage> createState() => _SignUpSetProfilePageState();
}

class _SignUpSetProfilePageState extends State<SignUpSetProfilePage> {
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Container(
                  //   width: 120,
                  //   height: 120,
                  //   decoration: const BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     color: kLightBackgroundColor,
                  //   ),
                  //   child: Center(
                  //     child: Image.asset(
                  //       '${assetImage}ic_upload.png',
                  //       width: 32,
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 16,
                  // ),
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          '${assetImage}img_profile.png',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Shayna Hanna',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomFormField(
                    title: 'Set PIN (6 Digit number)',
                    obsecureText: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomFilledButton(
                    title: 'Continue',
                    onPresed: () {
                      Navigator.pushNamed(context, SignUpSetDocsPage.routeName);
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
