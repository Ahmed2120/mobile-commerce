import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_commerce/utility/app_icon.dart';
import 'package:mobile_commerce/utility/icon_and_text.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: dSize.height * 0.42,
              decoration: const BoxDecoration(
                  color: Colors.black12,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/8.png'),
                  )),
            ),
          ),
          Positioned(
            top: 45,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: dSize.height * 0.39,
            child: Container(
              height: dSize.height * 0.61,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'iphone',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20, ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      IconAndText(icon: 'assets/images/hard.png', title: '64GB', iconColor: Color(0xFFFF9C33),),
                      IconAndText(icon: 'assets/images/ram.png', title: '4GB', iconColor: Color(0xFF33CEFF),),
                      IconAndText(icon: 'assets/images/cpu.png', title: ' Exynos 850', iconColor: Color(0xFFE76BFA),),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                    'introduce',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: 250,
                    child: const Text(
                      '''Released 2019, September 20194g, 8.3mm thickness iOS 13, up to iOS 15.5 64GB/128GB/256GB storage, no card slo''',
                      style: TextStyle(fontSize: 15, height: 1.7),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.remove,),
                  SizedBox(width: 10,),
                  Text('3', style: TextStyle(fontSize: 30),),
                  SizedBox(width: 10,),
                  Icon(Icons.add,),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF33CEFF),
              ),
              child: const Text('Add To Card', style: TextStyle(color: Colors.white, fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}
