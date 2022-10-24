import 'package:ewallet/shared/styles.dart';
import 'package:ewallet/ui/widgets/buttons.dart';
import 'package:ewallet/ui/widgets/forms.dart';
import 'package:ewallet/utils/constants.dart';
import 'package:flutter/material.dart';

class SignUpSetDocsPage extends StatefulWidget {
  const SignUpSetDocsPage({super.key});

  static const String routeName = '/signup-setdoc';

  @override
  State<SignUpSetDocsPage> createState() => _SignUpSetDocsPageState();
}

class _SignUpSetDocsPageState extends State<SignUpSetDocsPage> {
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
              'Verify Your\nAccount',
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
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: kLightBackgroundColor,
                    ),
                    child: Center(
                      child: Image.asset(
                        '${assetImage}ic_upload.png',
                        width: 32,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // Container(
                  //   width: 120,
                  //   height: 120,
                  //   decoration: const BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     image: DecorationImage(
                  //       fit: BoxFit.cover,
                  //       image: AssetImage(
                  //         '${assetImage}img_profile.png',
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Passport/ID CARD',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),
                  CustomFilledButton(
                    title: 'Continue',
                    onPresed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextButton(
              title: 'Skip For Now',
              onPresed: () {},
            )
          ],
        ),
      ),
    );
  }
}
