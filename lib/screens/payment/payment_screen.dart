import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/payment_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/payment/confirm_order_screen.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'confirm_apoinment_screen.dart';
import 'payment_error_screen.dart';


class PaymentScreen extends GetWidget<PaymentController> {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<PaymentController>(
      init: PaymentController(),
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            body: Column(children: [
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: primaryColor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(22.00), horizontal: MySize.getScaledSizeHeight(18.00)),
                  child: Column(
                    children: [
                      Space.height(17),
                      Row(children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => const ConfirmedOrderScreen());//Navigator.push(context, MaterialPageRoute(builder: (context) => const ConfirmedOrderScreen()));
                          },
                          child: Image(
                            image: const AssetImage("assets/images/png/whitebg.png"),
                            fit: BoxFit.fill,
                            height: MySize.size80,
                            width: MySize.size80,
                          ),
                        ),
                        SizedBox(width: MySize.size25),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(() => const PaymentErrorScreen());//Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentErrorScreen()));
                              },
                              child: AppText1(
                                text: "Treatmento",
                                size: 20.0,
                                txtColor: primaryWhite,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Space.height(8),
                            AppText1(
                              text: "Lorem ipsum dolor sit amet",
                              size: 12.0,
                              txtColor: primaryWhite,
                              fontWeight: FontWeight.w400,
                            ),
                            Space.height(12),
                            InkWell(
                              onTap: () {
                                //Get.to(() => const ConfirmedOrderScreen()); // Navigator.push(context, MaterialPageRoute(builder: (context) => const ConfirmedOrderScreen()));
                              },
                              child: AppText1(
                                text: "\$45",
                                size: 24.0,
                                txtColor: primaryWhite,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ]),
                      Space.height(20),
                    ],
                  ),
                ),
              ),
              Space.height(8),
            ]),
          ),
        );
      },);
  }
}