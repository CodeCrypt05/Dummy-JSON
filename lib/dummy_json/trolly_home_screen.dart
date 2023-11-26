import 'package:dummy_json/data/category_panel.dart';
import 'package:dummy_json/widget/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeTrollyScreen extends StatelessWidget {
  const HomeTrollyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              // color: Colors.amberAccent,
              child: buildCategoryPanel(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryPanel() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categoryPanel.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categoryPanel[index],
          );
        });
  }
}
