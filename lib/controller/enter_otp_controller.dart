import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnterOtpController extends GetxController{

  static EnterOtpController get to => Get.find();
  Rx<TextEditingController> mobileController = TextEditingController().obs;
  Rx<TextEditingController> otpController = TextEditingController().obs;
  GlobalKey<FormState> formKeyMobile = GlobalKey<FormState>();
  final RxBool isNext2 = false.obs;
  final RxBool isNext1 = false.obs;

}