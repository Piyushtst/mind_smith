import 'package:get/get.dart';
import 'package:order_tracker/order_tracker.dart';

class OrderIdController extends GetxController{

  static OrderIdController get to => Get.find();

  List<TextDto> orderList = [
    TextDto("Order Confirmed", "5 Jan 2023"),
    TextDto("Order Confirmed", "5 Jan 2023"),
  ];

  List<TextDto> shippedList = [
    TextDto("Pick & Packed", "7 Jan 2023"),
    TextDto("7 Jan 2023", null),
  ];

  List<TextDto> outOfDeliveryList = [
    TextDto("YIn Transit", "10 Jan 2023"),
  ];

  List<TextDto> deliveredList = [
    TextDto("Out for Delivery", "15 Jan 2023"),
  ];

}