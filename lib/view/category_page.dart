import 'package:flutter/material.dart';

import 'components/app_bar.dart';
import 'components/items.dart';
import 'components/search_box.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: buildAppBar(context, 'Category'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBox(onChanged: (value){}),
              Items(),
            ],
          ),
        ),
      ),
    );
  }
}
