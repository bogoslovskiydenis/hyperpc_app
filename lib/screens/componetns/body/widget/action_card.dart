import 'package:flutter/material.dart';

import '../../../../const/constants.dart';
import 'actions_widget.dart';

class ActionCard extends StatelessWidget {
  const ActionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      color: kPrimaryColor,
      child: Wrap(

        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ActionsWidget(
            image: "assets/images/banne1.jpg",
            title: "Оптимальная серія",
            price: "27000"
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ActionsWidget(
              image: "assets/images/banne1.jpg",
              title: "Продвинута серія",
              price: "40000"
            ),
          ),
          ActionsWidget(
            image: "assets/images/banne1.jpg",
            title: "Екстримальна серія",
            price: "80000"
          ),
        ],
      ),
    );
  }
}
