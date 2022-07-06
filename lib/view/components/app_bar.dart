import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context ,String title) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    backgroundColor: Color(0xFFF5F5F5),
    foregroundColor: Colors.black,
    elevation: 0,
  );
}
