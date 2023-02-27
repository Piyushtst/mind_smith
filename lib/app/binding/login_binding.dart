import 'package:get/get.dart';
import 'package:mind_smith/controller/login_controller.dart';



class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
          () => LoginController(),
    );
  }
}
