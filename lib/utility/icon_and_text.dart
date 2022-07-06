import 'package:flutter/material.dart';

class IconAndText extends StatelessWidget {
  final String icon;
  final String title;
  final Color iconColor;
  final double size;

  const IconAndText(
      {Key? key,
        required this.icon,
        required this.title,
        this.iconColor = const Color(0xFF756D54),
        this.size = 30})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(icon, width: size, color: iconColor,),
        const SizedBox(width: 5,),
        Text(title),
      ],
    );
  }
}
