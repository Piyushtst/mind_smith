import 'package:get/get.dart';

class ApoinmentController extends GetxController{

  static ApoinmentController get to => Get.find();

  DateTime today = DateTime.now();
  late DateTime day;
  void onDaySelect() {
      today = day;
  }


}