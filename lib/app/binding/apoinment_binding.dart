import 'package:get/get.dart';
import 'package:mind_smith/controller/apoinment_controller.dart';


class ApoinmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApoinmentController>(
          () => ApoinmentController(),
    );
  }
}
