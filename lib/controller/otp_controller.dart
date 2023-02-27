import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpController extends GetxController{

  static OtpController get to => Get.find();
  Rx<TextEditingController> enterMobileController = TextEditingController().obs;
  GlobalKey<FormState> formKeyOtp = GlobalKey<FormState>();
  final RxBool isVisible = false.obs;
  final RxBool isOtp = false.obs;


}