import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2View extends StatelessWidget {
  const Page2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Binding'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text("Back"),
        ),
      ),
    );
  }
}
