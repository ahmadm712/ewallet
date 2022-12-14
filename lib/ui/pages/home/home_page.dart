import 'package:ewallet/shared/styles.dart';
import 'package:ewallet/ui/widgets/home_latest_transcations_item.dart';
import 'package:ewallet/ui/widgets/home_services_item.dart';
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
          buildCardWidget(),
          buildLevel(),
          buildServices(),
          buildLatestTransactions(),
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

  Widget buildCardWidget() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(30),
      margin: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            '${assetImage}img_bg_card.png',
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shayna Hanna',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '**** **** **** 2309',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
              letterSpacing: 6,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Balance',
            style: whiteTextStyle.copyWith(
              fontWeight: regular,
            ),
          ),
          Text(
            'Rp 12.500',
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Level 1',
                style: blackTextStyle.copyWith(
                  fontWeight: regular,
                ),
              ),
              const Spacer(),
              Text(
                '55% ',
                style: greenTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
              Text(
                'of Rp 20.000',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: const LinearProgressIndicator(
              value: 0.55,
              minHeight: 5,
              backgroundColor: kLightBackgroundColor,
              valueColor: AlwaysStoppedAnimation(kGreenColor),
            ),
          )
        ],
      ),
    );
  }

  Widget buildServices() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do Something',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServiceItem(
                title: 'Top Up',
                iconUrl: '${assetImage}ic_topup.png',
                onPressed: () {},
              ),
              HomeServiceItem(
                title: 'Send',
                iconUrl: '${assetImage}ic_send.png',
                onPressed: () {},
              ),
              HomeServiceItem(
                title: 'Withdraw',
                iconUrl: '${assetImage}ic_withdraw.png',
                onPressed: () {},
              ),
              HomeServiceItem(
                title: 'More',
                iconUrl: '${assetImage}ic_more.png',
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildLatestTransactions() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transactions',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: const [
                HomeLatestTransactionItem(
                  iconUrl: '${assetImage}ic_transaction_cat1.png',
                  title: 'Top Up',
                  amount: '+ 450.000',
                  date: 'Yesterday',
                ),
                HomeLatestTransactionItem(
                  iconUrl: '${assetImage}ic_transaction_cat2.png',
                  title: 'Cashback',
                  amount: '+ 22.000',
                  date: 'Sept 11',
                ),
                HomeLatestTransactionItem(
                  iconUrl: '${assetImage}ic_transaction_cat3.png',
                  title: 'Withdraw',
                  amount: '- 5000',
                  date: 'Sep 22',
                ),
                HomeLatestTransactionItem(
                  iconUrl: '${assetImage}ic_transaction_cat4.png',
                  title: 'Transfer',
                  amount: '- 100.000',
                  date: 'Aug 27',
                ),
                HomeLatestTransactionItem(
                  iconUrl: '${assetImage}ic_transaction_cat5.png',
                  title: 'Electric',
                  amount: '- 12.000.000',
                  date: 'Feb 21',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
