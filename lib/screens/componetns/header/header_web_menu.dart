import 'package:flutter/material.dart';

import 'header_menu.dart';

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderMenu(
          press: () {},
          title: "Модели",
        ),
        const SizedBox(
          width: 10,
        ),
        HeaderMenu(
          press: () {},
          title: "В Наличии",
        ),
        const SizedBox(
          width: 10,
        ),
        HeaderMenu(
          press: () {},
          title: "Конфигуратор",
        ),
        const SizedBox(
          width: 10,
        ),
        HeaderMenu(
          press: () {},
          title: "Услуги",
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}