import 'package:get/get.dart';
import 'package:mind_smith/app/routes/app_pages.dart';


class NavigationController extends GetxController{

  static NavigationController get to => Get.find();
  RxInt currentIndex = 0.obs;
  RxInt currentIndex1=0.obs;
  List pages = [  Routes.HOME,Routes.APOINMENT,Routes.MYREPORT,Routes.PROFILE,];
  @override
  void onInit() {
    super.onInit();
    currentIndex=currentIndex1;
  }


}