import 'package:flutter/material.dart';

import '../../../../const/constants.dart';

class ActionsWidget extends StatelessWidget {
  const ActionsWidget({
    Key? key,
    required this.image,
    required this.title, required this.price,
  }) : super(key: key);
  final String image;
  final String title;
  final String price;


  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        padding: EdgeInsets.all(kPadding / 2),
        width: 300,
        child: Column(
          children: [
            Row(
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Stack(
                    children: [Container(
                      height: 200,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        image: DecorationImage(image: AssetImage(image),
                            fit: BoxFit.cover),),
                    ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 8),
                        child: Text(title, style: TextStyle(color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 8),
                        child: Text(price, style: TextStyle(color: Colors.green,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),),
                      ),
                    ],),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Описание может быть !!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
