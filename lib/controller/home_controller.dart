import 'package:get/get.dart';
import 'package:mind_smith/costants/app_images.dart';

class HomeController extends GetxController{

  static HomeController get to => Get.find();

  List img3 = [
    AppImage.profile,
    AppImage.profile5,
    AppImage.profile4,
    AppImage.profile,
    AppImage.profile3,
  ];

  final RxBool isCall = true.obs;

}