import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Discounts extends StatefulWidget {
  const Discounts({Key? key}) : super(key: key);

  @override
  State<Discounts> createState() => _DiscountsState();
}

class _DiscountsState extends State<Discounts> {

  int currentIndex = 0;

  List imgList = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: imgList
                .map((e) => Container(
              width: double.infinity,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.cyanAccent),
              child: Image.asset(
                e,
                fit: BoxFit.fill,
              ),
            ))
                .toList(),
            options: CarouselOptions(
                height: 200,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                onPageChanged: (index, _){setState(() {
                  currentIndex = index;
                });}
            )),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildCircle(0),
            buildCircle(1),
            buildCircle(2),
          ],
        ),
      ],
    );
  }

  Container buildCircle(int index) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentIndex == index ? Colors.green : Colors.orange
      ),
    );
  }
}
