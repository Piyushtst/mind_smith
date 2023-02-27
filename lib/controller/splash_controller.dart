import 'dart:async';

import 'package:get/get.dart';
import 'package:mind_smith/app/routes/app_pages.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/global/constants/app_string.dart';
import 'package:mind_smith/main.dart';
import 'package:mind_smith/screens/auth/login_screen.dart';

class SplashController extends GetxController{

  static SplashController get to => Get.find();

  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
     // Get.offAll(const LoginScreen());
      Get.offAllNamed(Routes.LOGIN);
      //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const LoginScreen()), (_) => false);
    });
  }

  /*void onInit() {
    super.onInit();
    // initFcm();

    Timer(
      const Duration(seconds: 2),
          //() => Get.offAllNamed((!isNullEmptyOrFalse(box!.read(Constant.tokenKey)))
          //? Routes.HOME
          //: Routes.LOGIN),
            () => Get.offAll(Routes.LOGIN)
    );
    //if (box.read(Constant.category) == null) {
     // box.write(Constant.category, [1, 2, 3, 4, 5]);

  }*/

}