import 'package:flutter/material.dart';
import 'package:hyperpc_app/screens/componetns/body/widget/action_card.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ActionCard(),
        ]
      ),
    );
  }
}
