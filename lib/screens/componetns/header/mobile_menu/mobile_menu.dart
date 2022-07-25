import 'package:flutter/material.dart';
import 'package:hyperpc_app/const/constants.dart';

import '../header_menu.dart';

class MobileMenu extends StatefulWidget {
  const MobileMenu({Key? key,}) : super(key: key);


  @override
  State<MobileMenu> createState() => _MobileMenuState();
}

class _MobileMenuState extends State<MobileMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderMenu(
            press: () {},
            title: "Модели",
          ),
          const SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {},
            title: "В Наличии",
          ),
          const SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {},
            title: "Конфигуратор",
          ),
          const SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {},
            title: "Услуги",
          ),
          const SizedBox(
            height: kPadding,
          ),
        ],
      ),
    );
  }
}
