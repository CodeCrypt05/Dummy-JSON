import 'package:dummy_json/getx/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// USING GETX WIDGET

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('GetX Count'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              GetBuilder<Controller>(
                init: Controller(),
                id: '123',
                builder: (controller) => Text(
                  controller.count.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              GetBuilder<Controller>(
                init: Controller(),
                builder: (controller) => Text(
                  controller.count.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  var increment = Get.find<Controller>();
                  increment.incrementCount();
                },
                child: const Text(
                  'Increment',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  var decrement = Get.find<Controller>();
                  decrement.decrementCount();
                },
                child: const Text(
                  'Decrement',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
