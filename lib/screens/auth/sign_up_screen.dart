import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/sign_up_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/app_images.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/auth/verification_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/textfield.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<SignUpController>(
      init: SignUpController(),
        builder: (controller) {
         return SafeArea(
            child: Scaffold(
              //resizeToAvoidBottomInset: false,
              body: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                        child: Form(
                          onChanged: () {
                            if(controller.formKey.currentState!.validate()){
                              controller.isNext.value = true;
                            }else if(controller.firstNameController.value.text=="" || controller.lastNameController.value.text=="" || controller.emailController.value.text=="" || controller.passwordController.value.text==""){
                              controller.isNext.value = false;
                            }else{
                              print("error");
                            }
                          },
                          key: controller.formKey,
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
                                text: "Welcome !",
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
                                text: "First Name",
                                size: 12.0,
                                txtColor: greyTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                              Space.height(6),
                              AppTextField(
                                hintText: "Enter your first name",
                                needValidation: true,
                                validationMessage: "First Name",
                                prefixIco: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 14),
                                  child: Image(
                                    image:  AssetImage(AppImage.userName),
                                    height: MySize.size16,
                                    width: MySize.size14,
                                  ),
                                ),
                                maxLines: 1,
                                tcPadding: 16,
                                bcPadding: 16,
                              ),
                              Space.height(16),
                              AppText1(
                                text: "Last Name",
                                size: 12.0,
                                txtColor: greyTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                              Space.height(6),
                              AppTextField(
                                hintText: "Enter your last name",
                                needValidation: true,
                                validationMessage: "Last Name",
                                prefixIco: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 14),
                                  child: Image(
                                    image:  AssetImage(AppImage.userName),
                                    height: MySize.size16,
                                    width: MySize.size14,
                                  ),
                                ),
                                maxLines: 1,
                                tcPadding: 16,
                                bcPadding: 16,
                              ),
                              Space.height(16),
                              AppText1(
                                text: "E-mail",
                                size: 12.0,
                                txtColor: greyTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                              Space.height(6),
                              AppTextField(
                                hintText: "Enter your e-mail here",
                                needValidation: true,
                                isEmailValidation: true,
                                upperCaseTextFormatter: false,
                                validationMessage: "Email",
                                prefixIco: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 14),
                                  child: Image(
                                    image:  AssetImage(AppImage.email),
                                    height: MySize.size16,
                                    width: MySize.size14,
                                  ),
                                ),
                                maxLines: 1,
                                tcPadding: 16,
                                bcPadding: 16,
                              ),
                              Space.height(16),
                              AppText1(
                                text: "Password",
                                size: 12.0,
                                txtColor: greyTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                              Space.height(4),
                              Obx(() => AppTextField(
                                hintText: "Enter Password",
                                needValidation: true,
                                isPassWordValidation: true,
                                validationMessage: "Password",
                                obscureText: controller.isVisible.value,
                                maxLines: 1,
                                prefixIco: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 14),
                                  child: Image(
                                    image:  AssetImage(AppImage.password),
                                    height: MySize.size16,
                                    width: MySize.size14,
                                  ),
                                ),
                                iconButton: InkWell(
                                  onTap: () {
                                    controller.isVisible.value = !controller.isVisible.value;
                                    //setState(() {});
                                  },
                                  child: Icon(
                                    controller.isVisible.value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                                    color: greyColor,
                                    size: MySize.size26,
                                  ), ),
                                tcPadding: 16,
                                bcPadding: 16,
                              ),),
                              Space.height(16),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                    child: Obx(() => AppButton(
                        btnText: "Next",
                        bttxtColor: primaryWhite,
                        bgColor: controller.isNext.value?primaryColor:primaryColor.withOpacity(0.25),
                        onTap: () async{
                          if (controller.formKey.currentState!.validate()) {
                            //controller.isNext.value=true;
                            await  Get.to(() => const Verification());//Navigator.push(context, MaterialPageRoute(builder: (context) => const Verification()));
                          }else{
                            controller.isNext.value=false;
                            //setState(() {});
                          }

                        }),),
                  ),
                  Space.height(24),
                ],
              ),
            ),
          );
        },);
  }
}