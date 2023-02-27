import 'package:get/get.dart';
import 'package:mind_smith/costants/app_images.dart';

class FilterOrSortController extends GetxController{

  static FilterOrSortController get to => Get.find();

  List img1 = [AppImage.profile1, AppImage.profile3, AppImage.profile4, AppImage.profile, AppImage.profile3,];
  final RxBool isFavorit = false.obs;
  final RxInt inx = 0.obs;
}