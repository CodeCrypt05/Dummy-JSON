import 'package:dummy_json/getx/page1/page1_controller.dart';
import 'package:dummy_json/getx/page2/page2_controller.dart';
import 'package:get/get.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Page1Controller());

    Get.lazyPut(() => Page2Controller());
  }
}
