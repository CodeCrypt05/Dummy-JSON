import 'package:dummy_json/getx/page1/page1_controller.dart';
import 'package:dummy_json/getx/page2/page2_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1View extends StatelessWidget {
  const Page1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.find<Page1Controller>().pageName),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed('/page2');
          },
          child: Text("Navigate to page 2"),
        ),
      ),
    );
  }
}
