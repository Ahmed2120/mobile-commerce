import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {

  final ValueChanged<String> onChanged;
  const SearchBox({
    Key? key, required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
              color: const Color(0xFFB5BFD0).withOpacity(0.32)
          )
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: const InputDecoration(
            icon: Icon(Icons.search),
            hintText: 'Search here',
            hintStyle: TextStyle(color: Color(0xFFB5BFD0)),
            border: InputBorder.none
        ),
      ),
    );
  }
}