import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryWidget extends StatelessWidget {
  final String name;
  final IconData iconData;

  CategoryWidget({required this.name, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Color(0xFFDAC0A3),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: FaIcon(
              iconData, // Menggunakan IconData untuk ikon
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black.withOpacity(0.7),
          ),
        )
      ],
    );
  }
}
