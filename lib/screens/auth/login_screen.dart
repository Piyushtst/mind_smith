import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/login_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/app_images.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/auth/sign_up_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_ritchtext.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/textfield.dart';


class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              Flexible(
                fit: FlexFit.loose,
                flex: 5,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding:
                    EdgeInsets.only(left: MySize.getScaledSizeWidth(44.00), right: MySize.getScaledSizeWidth(44.00), top: MySize.getScaledSizeHeight(91.00), bottom: MySize.getScaledSizeHeight(58.00)),
                    child: Image(
                      image:  AssetImage(AppImage.login),
                      width: MySize.screenWidth,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                flex: 7,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MySize.getScaledSizeWidth(24.00),
                    right: MySize.getScaledSizeWidth(24.00),
                  ),
                  child: Form(
                    key: controller.formKeyLogin,
                    child: Column(
                      children: [
                        Obx(() => AppTextField(
                          hintText: "Enter your Email Address",
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
                          obscureText: controller.isVisible.value,
                          maxLines: 1,
                          iconButton: InkWell(
                            onTap: () {
                              controller.isVisible.value = !controller.isVisible.value;
                              //setState(() {});
                            },
                            child: Icon(
                              controller.isVisible.value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                              color: greyColor,
                              size: MySize.size26,
                            ),),
                          tcPadding: 16,
                          bcPadding: 16,
                        ),),
                        Space.height(20),
                        Obx(() => AppTextField(
                          hintText: "Enter Password",
                          needValidation: true,
                          isPassWordValidation: true,
                          validationMessage: "Password",
                          prefixIco: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Image(
                              image:  AssetImage(AppImage.password),
                              height: MySize.size16,
                              width: MySize.size14,
                            ),
                          ),
                          obscureText: controller.isVisible1.value,
                          maxLines: 1,
                          iconButton:  InkWell(
                            onTap: () {
                              controller.isVisible1.value = !controller.isVisible1.value;
                              //setState(() {});
                            },
                            child: Icon(
                              controller.isVisible1.value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                              color: greyColor,
                              size: MySize.size26,
                            ),),
                          tcPadding: 16,
                          bcPadding: 16,
                        ),),

                        Space.height(8),
                        Align(alignment: Alignment.centerRight, child: AppRitchText(text: "Forgot Password", text2: " Reset Password")),
                        Space.height(30),
                        AppButton(
                            btnText: "Login",
                            bttxtColor: primaryWhite,
                            bgColor: primaryColor,
                            onTap: () {
                             /* if (controller.formKeyLogin.currentState!.validate()) {
                                print("validate");
                                //await Navigator.push(context, MaterialPageRoute(builder: (context) => const Verification()));
                              }*/
                            }
                            ),
                        Space.height(40),
                        //Expanded
                        Row(
                          children: [
                            const Expanded(
                                child: Divider(
                                  height: 0.5,
                                  color: greyColor,
                                )),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(8.00)),
                              child: AppText12(
                                text: "Or Login with other account",
                              ),
                            ),
                            const Expanded(
                                child: Divider(
                                  height: 0.5,
                                  color: greyColor,
                                )),
                          ],
                        ),
                        Space.height(40),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: MySize.getScaledSizeWidth(46.00), /*vertical: MySize.getScaledSizeHeight(40.00)*/
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Image(
                                    image:  AssetImage(AppImage.facebook),
                                    fit: BoxFit.fill,
                                    //height: MySize.size52,
                                    width: MySize.size52,
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Image(
                                    image:  AssetImage(AppImage.google),
                                    fit: BoxFit.fill,
                                    // height: MySize.size52,
                                    width: MySize.size52,
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Image(
                                    image:  AssetImage(AppImage.linkedIn),
                                    fit: BoxFit.fill,
                                    // height: MySize.size52,
                                    width: MySize.size52,
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Image(
                                    image: AssetImage(AppImage.ios),
                                    fit: BoxFit.fill,
                                    // height: MySize.size52,
                                    width: MySize.size52,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Space.height(40),
                        InkWell(
                          onTap: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                            Get.to(() => const SignUpScreen());
                          },
                          child: Container(
                            //height: MySize.size55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: primaryColor,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(8.00), horizontal: MySize.getScaledSizeWidth(40.00)),
                              child: Center(child: AppRitchText2(text: "Don't have account?", text2: "  Create Account")),
                            ),
                          ),
                        ),
                        //const SizedBox(height: 30),
                        Space.height(20),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },);
  }
}





/*class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              Flexible(
                fit: FlexFit.loose,
                flex: 5,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding:
                    EdgeInsets.only(left: MySize.getScaledSizeWidth(44.00), right: MySize.getScaledSizeWidth(44.00), top: MySize.getScaledSizeHeight(91.00), bottom: MySize.getScaledSizeHeight(58.00)),
                    child: Image(
                      image: const AssetImage("assets/images/png/login.png"),
                      width: MySize.screenWidth,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                flex: 7,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MySize.getScaledSizeWidth(24.00),
                    right: MySize.getScaledSizeWidth(24.00),
                  ),
                  child: Form(
                    key: controller.formKeyLogin,
                    child: Column(
                      children: [
                        AppTextField(
                          hintText: "Enter your Email Address",
                          needValidation: true,
                          isEmailValidation: true,
                          upperCaseTextFormatter: false,
                          validationMessage: "Email",
                          prefixIco: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Image(
                              image: const AssetImage("assets/images/png/email.png"),
                              height: MySize.size16,
                              width: MySize.size14,
                            ),
                          ),
                          obscureText: controller.isVisible.value,
                          maxLines: 1,
                          iconButton: Obx(() => InkWell(
                              onTap: () {
                                controller.isVisible.value = !controller.isVisible.value;
                                //setState(() {});
                              },
                              child: Icon(
                                controller.isVisible.value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                                color: greyColor,
                                size: MySize.size26,
                              )),),
                          tcPadding: 16,
                          bcPadding: 16,
                        ),
                        Space.height(20),
                        AppTextField(
                          hintText: "Enter Password",
                          needValidation: true,
                          isPassWordValidation: true,
                          validationMessage: "Password",
                          prefixIco: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Image(
                              image: const AssetImage("assets/images/png/lok.png"),
                              height: MySize.size16,
                              width: MySize.size14,
                            ),
                          ),
                          obscureText: controller.isVisible1.value,
                          maxLines: 1,
                          iconButton: InkWell(
                              onTap: () {
                                controller.isVisible1.value = !controller.isVisible1.value;
                                //setState(() {});
                              },
                              child: Icon(
                                controller.isVisible1.value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                                color: greyColor,
                                size: MySize.size26,
                              )),
                          tcPadding: 16,
                          bcPadding: 16,
                        ),
                        Space.height(8),
                        Align(alignment: Alignment.centerRight, child: AppRitchText(text: "Forgot Password", text2: " Reset Password")),
                        Space.height(30),
                        AppButton(
                            btnText: "Login",
                            bttxtColor: primaryWhite,
                            bgColor: primaryColor,
                            onTap: () {
                              *//*if (formKeyLogin.currentState!.validate()) {
                            print("validate");
                            //await Navigator.push(context, MaterialPageRoute(builder: (context) => const Verification()));
                          }*//*
                            }),
                        //const SizedBox(height: 40),
                        Space.height(40),
                        Expanded(
                          child: Row(
                            children: [
                              const Expanded(
                                  child: Divider(
                                    height: 0.5,
                                    color: greyColor,
                                  )),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(8.00)),
                                child: AppText12(
                                  text: "Or Login with other account",
                                ),
                              ),
                              const Expanded(
                                  child: Divider(
                                    height: 0.5,
                                    color: greyColor,
                                  )),
                            ],
                          ),
                        ),
                        Space.height(40),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MySize.getScaledSizeWidth(46.00), *//*vertical: MySize.getScaledSizeHeight(40.00)*//*
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Image(
                                  image: const AssetImage("assets/images/png/facebook.png"),
                                  fit: BoxFit.fill,
                                  //height: MySize.size52,
                                  width: MySize.size52,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Image(
                                  image: const AssetImage("assets/images/png/google.png"),
                                  fit: BoxFit.fill,
                                  // height: MySize.size52,
                                  width: MySize.size52,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Image(
                                  image: const AssetImage("assets/images/png/linkedin.png"),
                                  fit: BoxFit.fill,
                                  // height: MySize.size52,
                                  width: MySize.size52,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Image(
                                  image: const AssetImage("assets/images/png/ios.png"),
                                  fit: BoxFit.fill,
                                  // height: MySize.size52,
                                  width: MySize.size52,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Space.height(40),
                        InkWell(
                          onTap: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                            Get.to(() => const SignUpScreen());
                          },
                          child: Container(
                            //height: MySize.size55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: primaryColor,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(8.00), horizontal: MySize.getScaledSizeWidth(40.00)),
                              child: Center(child: AppRitchText2(text: "Don't have account?", text2: "  Create Account")),
                            ),
                          ),
                        ),
                        //const SizedBox(height: 30),
                        Space.height(20),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },);
  }
}*/


