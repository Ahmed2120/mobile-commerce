import 'package:flutter/material.dart';
import 'package:mobile_commerce/view/category_page.dart';
import 'package:mobile_commerce/view/home_page.dart';
import 'package:mobile_commerce/view/product_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Merriweather'
      ),
      // home: HomePage()
      home: CategoryPage()
    );
  }
}

