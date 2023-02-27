import 'package:get/get.dart';

class FilterController extends GetxController{

  static FilterController get to => Get.find();

  RxDouble lowerValue = 0.2.obs;
  RxDouble upperValue = 0.8.obs;
  RxDouble rating = 3.0.obs;
  RxString isColor="Neurologist".obs;
}