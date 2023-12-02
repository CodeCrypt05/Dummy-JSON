import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0;

  incrementCount() {
    count++;
    update(['123']);
  }

  decrementCount() {
    count--;
    update(['123']);
  }
}
