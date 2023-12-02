import 'package:dummy_json/getx/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  var myController = Get.put(Controller());

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
              Obx(
                () => Text(
                  myController.count.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  myController.incrementCount();
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
                  myController.decrementCount();
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
