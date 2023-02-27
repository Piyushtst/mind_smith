import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  static LoginController get to => Get.find();
  GlobalKey<FormState> formKeyLogin = GlobalKey<FormState>();
  final RxBool isVisible = false.obs;
  final RxBool isVisible1 = false.obs;

}