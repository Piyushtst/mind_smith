import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/app/routes/app_pages.dart';
import 'package:mind_smith/controller/enter_otp_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/app_images.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/navigationbar/nav_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_ritchtext.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/textfield.dart';

class EnterOtp extends GetWidget<EnterOtpController> {
  const EnterOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<EnterOtpController>(
      init: EnterOtpController(),
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                      child: Form(
                        onChanged: () {
                          if(controller.formKeyMobile.currentState!.validate()){
                            controller.isNext1.value = true;
                          }else if(controller.mobileController.value.text=="" || controller.otpController.value.text==""){
                            controller.isNext1.value = false;
                          }else{
                            print("error");
                          }
                        },
                        key: controller.formKeyMobile,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Space.height(47),
                            InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(Icons.arrow_back, size: 30)),
                            Space.height(27),
                            AppText1(
                              text: "Enter your",
                              size: 32.0,
                              txtColor: textBlack,
                              fontWeight: FontWeight.w600,
                            ),
                            Space.height(12),
                            AppText1(
                              text: "Phone number",
                              size: 32.0,
                              txtColor: textBlack,
                              fontWeight: FontWeight.w600,
                            ),
                            Space.height(16),
                            AppText1(
                              text: "Lorem ipsum dolor sit amet consectetur. Sagittis egestas ",
                              size: 14.0,
                              txtColor: greyTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                            Space.height(20),
                            AppText1(
                              text: "Mobile",
                              size: 12.0,
                              txtColor: greyTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                            Space.height(6),
                            AppTextField(
                              controller: controller.mobileController.value,
                              hintText: "Enter your phone number",
                              validationMessage: "Mobile",
                              needValidation: true,
                              maxLength: 10,
                              keyBoardTypeEnter: TextInputType.number,
                              showNumber: true,
                              prefixIco: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 14),
                                child: Image(
                                  image: AssetImage(AppImage.foner),
                                  height: MySize.size16,
                                  width: MySize.size14,
                                ),
                              ),
                              maxLines: 1,
                              tcPadding: 16,
                              bcPadding: 16,
                            ),
                            Space.height(6),
                            Align(alignment: Alignment.topRight, child: AppRitchText(text: "Wrong number?", text2: "  Change Number")),
                            Space.height(20),
                            AppText1(
                              text: "OTP",
                              size: 12.0,
                              txtColor: greyTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                            Space.height(6),
                            AppTextField(
                              controller: controller.otpController.value,
                              hintText: "Enter OTP",
                              validationMessage: "Otp",
                              needValidation: true,
                              maxLength: 6,
                              keyBoardTypeEnter: TextInputType.number,
                              showNumber: true,
                              prefixIco: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 14),
                                child: Image(
                                  image: AssetImage(AppImage.password),
                                  height: MySize.size16,
                                  width: MySize.size14,
                                ),
                              ),
                              maxLines: 1,
                              tcPadding: 16,
                              bcPadding: 16,
                            ),
                            Space.height(6),
                            Align(alignment: Alignment.topRight, child: AppRitchText(text: "Didn’t received OTP,", text2: "  Resend OTP")),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                  child: Obx(
                    () => AppButton(
                        btnText: "Next",
                        bttxtColor: primaryWhite,
                        bgColor: controller.isNext1.value? primaryColor : primaryColor.withOpacity(0.25),
                        onTap: () async {
                          if (controller.formKeyMobile.currentState!.validate()) {
                             //Navigator.push(context, MaterialPageRoute(builder: (context) => const NavScreen(currentIndex1: 0)));
                             Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>     const NavScreen(currentIndex1: 0)), (_) => false);
                            //Get.offAllNamed(NavScreen());
                          } else {
                            controller.isNext1.value = false;
                            //setState(() {});
                          }
                        }),
                  ),
                ),
                Space.height(24),
              ],
            ),
          ),
        );
      },
    );
  }
}
