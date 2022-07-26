import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  BannerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  enlargeStrategy: CenterPageEnlargeStrategy.height
                ),
                items: [
                  Image.asset('assets/images/banne1.jpg' , fit: BoxFit.cover, width: double.infinity,),
                  Image.asset('assets/images/banner2.jpg',fit: BoxFit.cover,),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
