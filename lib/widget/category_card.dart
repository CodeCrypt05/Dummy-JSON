import 'package:dummy_json/model/category.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blueAccent,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          SvgPicture.asset(
            category.image,
            fit: BoxFit.cover,
          ),
          Container(
            height: 60,
            width: 120,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: category.subColor),
            child: Text(
              category.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: category.textColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
