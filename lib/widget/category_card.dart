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
      child: Column(
        children: [
          SvgPicture.asset(
            category.image,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: category.subColor),
            child: Text(
              category.name,
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
