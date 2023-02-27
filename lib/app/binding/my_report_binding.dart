import 'package:get/get.dart';
import 'package:mind_smith/controller/my_report_controller.dart';


class MyReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyReportController>(
          () => MyReportController(),
    );
  }
}
