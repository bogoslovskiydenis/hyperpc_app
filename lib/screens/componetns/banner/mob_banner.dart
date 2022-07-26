import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MobileBanner extends StatelessWidget {
  const MobileBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(autoPlay: true, viewportFraction: 1 , height: 250,),
              items: [
                Image.asset('assets/images/banne1.jpg'),
                Image.asset('assets/images/banner2.jpg'),
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
