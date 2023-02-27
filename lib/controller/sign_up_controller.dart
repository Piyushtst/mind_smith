import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{

  static SignUpController get to => Get.find();
  Rx<TextEditingController> firstNameController = TextEditingController().obs;
  Rx<TextEditingController> lastNameController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final RxBool isVisible = false.obs;
  final RxBool isNext = false.obs;

}