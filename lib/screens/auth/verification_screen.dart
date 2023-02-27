import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/verification_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/app_images.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/auth/otp_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';


class Verification extends GetWidget<VerificationController> {
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<VerificationController>(
      init: VerificationController(),
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Space.height(68),
                        Image(
                          image:  AssetImage(AppImage.verify),
                          width: MySize.screenWidth,
                          fit: BoxFit.fill,
                        ),
                        Space.height(40),
                        AppText1(
                          text: "Verification mail has been sent to",
                          size: 16.0,
                          txtColor: textBlack,
                          fontWeight: FontWeight.w600,
                        ),
                        Space.height(4),
                        AppText1(
                          text: "mail@mail.com",
                          size: 16.0,
                          txtColor: greyColor,
                          fontWeight: FontWeight.w600,
                        ),
                        Space.height(4),
                        AppText1(
                          text: "Kindly verify your account",
                          size: 16.0,
                          txtColor: textBlack,
                          fontWeight: FontWeight.w600,
                        ),
                        Space.height(4),
                      ],
                    ),
                  ),
                  AppButton(
                      btnText: "Okay",
                      bttxtColor: primaryWhite,
                      bgColor: primaryColor,
                      onTap: () {
                        Get.to(() => const OtpScreen());//Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpScreen()));
                      }),
                  Space.height(24),
                ],
              ),
            ),
          ),
        );
      },);
  }
}