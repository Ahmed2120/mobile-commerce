import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobile_commerce/view/components/app_bar.dart';
import 'package:mobile_commerce/view/components/discounts.dart';
import 'package:mobile_commerce/view/components/items.dart';
import 'package:mobile_commerce/view/components/search_box.dart';

import 'components/categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: buildAppBar(context, 'Home'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBox(onChanged: (value){}),
              const Discounts(),
              const SizedBox(height: 30,),
              const Categories(),
              Items(),
            ],
          ),
        ),
      ),
    );
  }
}
