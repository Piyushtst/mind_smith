import 'package:get/get.dart';
import 'package:mind_smith/controller/home_controller.dart';




class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
          () => HomeController(),
    );
  }
}
