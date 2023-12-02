import 'package:dummy_json/getx/page1/page1_controller.dart';
import 'package:get/get.dart';

class Page1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Page1Controller());
  }
}
