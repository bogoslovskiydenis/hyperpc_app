import 'package:flutter/material.dart';
import '../../../const/constants.dart';

import '../../../responsive/responsive.dart';
import '../banner/banner_section.dart';
import '../banner/mob_banner.dart';
import 'header.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: kPrimaryColor,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(kPadding),
            constraints: const BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Header(),
                const SizedBox(
                  height: 20,
                ),
                Responsive.isDesktop(context) ? BannerSection() : MobileBanner(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
