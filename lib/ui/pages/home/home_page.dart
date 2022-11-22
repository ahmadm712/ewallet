import 'package:ewallet/shared/styles.dart';
import 'package:ewallet/utils/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          buildProfile(),
          const Center(
            child: Text('Home Screen'),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPurpleColor,
        elevation: 0,
        child: Image.asset(
          '${assetImage}ic_plus_circle.png',
          width: 24,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: kPrimaryColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            backgroundColor: kPrimaryColor,
            selectedItemColor: kBlueColor,
            unselectedItemColor: kBlackColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: blueTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 10,
            ),
            unselectedLabelStyle: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 10,
            ),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  '${assetImage}ic_overview.png',
                  width: 20,
                  color: kBlueColor,
                ),
                label: 'Overview',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  '${assetImage}ic_history.png',
                  width: 20,
                ),
                label: 'Overview',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  '${assetImage}ic_statistic.png',
                  width: 20,
                ),
                label: 'Overview',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  '${assetImage}ic_reward.png',
                  width: 20,
                ),
                label: 'Reward',
              ),
            ]),
      ),
    );
  }

  Widget buildProfile() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'shaynahan',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage(
                  '${assetImage}img_profile.png',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 16,
                height: 16,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor,
                ),
                child: const Center(
                  child: Icon(
                    Icons.check_circle,
                    color: kGreenColor,
                    size: 14,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
