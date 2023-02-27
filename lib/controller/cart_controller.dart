import 'package:get/get.dart';

class CartController extends GetxController{

  static CartController get to => Get.find();
  RxBool isVisible = false.obs;
  RxBool isMale = false.obs;
  RxBool FeMale = false.obs;
  RxBool orher = false.obs;

}