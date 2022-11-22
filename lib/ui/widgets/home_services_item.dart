import 'package:ewallet/shared/styles.dart';
import 'package:flutter/material.dart';

class HomeServiceItem extends StatelessWidget {
  const HomeServiceItem(
      {super.key, required this.title, this.onPressed, required this.iconUrl});
  final String title;
  final VoidCallback? onPressed;
  final String iconUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kPrimaryColor,
          ),
          child: Center(
            child: Image.asset(
              iconUrl,
              width: 26,
            ),
          ),
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(fontWeight: medium),
        )
      ],
    );
  }
}
