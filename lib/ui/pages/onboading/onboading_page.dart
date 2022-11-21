import 'package:carousel_slider/carousel_slider.dart';
import 'package:ewallet/shared/styles.dart';
import 'package:ewallet/ui/pages/sign-in/sign_in_page.dart';
import 'package:ewallet/ui/widgets/buttons.dart';
import 'package:ewallet/utils/constants.dart';
import 'package:flutter/material.dart';

class OnboadingPage extends StatefulWidget {
  const OnboadingPage({super.key});

  static const String routeName = '/onboading';

  @override
  State<OnboadingPage> createState() => _OnboadingPageState();
}

class _OnboadingPageState extends State<OnboadingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: imageOnboarding
                .map(
                  (image) => Image.asset(
                    image,
                    height: 331,
                  ),
                )
                .toList(),
            carouselController: carouselController,
            options: CarouselOptions(
              height: 331,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
              viewportFraction: 1,
              enableInfiniteScroll: false,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 80,
              left: 24,
              right: 24,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 24,
            ),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  titles[currentIndex],
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  subtitles[currentIndex],
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: currentIndex == 2 ? 38 : 50,
                ),
                if (currentIndex == 2) ...[
                  Column(
                    children: [
                      CustomFilledButton(
                        title: 'Get Started',
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextButton(
                        title: 'Sign In',
                        onTap: () {
                          Navigator.pushNamed(context, SignInPage.routeName);
                        },
                      )
                    ],
                  )
                ] else ...[
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == 0
                              ? kBlueColor
                              : kLightBackgroundColor,
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == 1
                              ? kBlueColor
                              : kLightBackgroundColor,
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == 2
                              ? kBlueColor
                              : kLightBackgroundColor,
                        ),
                      ),
                      const Spacer(),
                      CustomFilledButton(
                        width: 150,
                        title: 'Continue',
                        onTap: () {
                          carouselController.nextPage();
                        },
                      ),
                    ],
                  )
                ],
              ],
            ),
          )
        ],
      ),
    );
  }
}
