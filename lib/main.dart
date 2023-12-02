import 'package:dummy_json/getx/all_bindings.dart';
import 'package:dummy_json/getx/page1/page1_binding.dart';
import 'package:dummy_json/getx/page2/page2_binding.dart';
import 'package:dummy_json/getx/page1/page1_view.dart';
import 'package:dummy_json/getx/page2/page2_view.dart';
import 'package:dummy_json/getx/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: AllBindings(),
      initialRoute: '/page1',
      getPages: [
        GetPage(
          name: '/page1',
          page: () => const Page1View(),
          binding: Page1Binding(),
        ),
        GetPage(
          name: '/page2',
          page: () => const Page2View(),
          binding: Page2Binding(),
        ),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Page1View(),
    );
  }
}
