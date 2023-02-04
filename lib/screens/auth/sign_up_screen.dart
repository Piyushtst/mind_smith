import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/auth/otp_screen.dart';
import 'package:mind_smith/screens/auth/verification_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
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
                      Space.height(4),
                      AppTextField(
                        hintText: "Enter your first name",
                        prefixIco: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: Image(
                            image: const AssetImage("assets/images/png/username.png"),
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
                      Space.height(4),
                      AppTextField(
                        hintText: "Enter your last name",
                        prefixIco: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: Image(
                            image: const AssetImage("assets/images/png/username.png"),
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
                      Space.height(4),
                      AppTextField(
                        hintText: "Enter your e-mail here",
                        prefixIco: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: Image(
                            image: const AssetImage("assets/images/png/email.png"),
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
                      AppTextField(
                        hintText: "Enter your Email Address",
                        obscureText: isVisible,
                        maxLines: 1,
                        prefixIco: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: Image(
                            image: const AssetImage("assets/images/png/lok.png"),
                            height: MySize.size16,
                            width: MySize.size14,
                          ),
                        ),
                        iconButton: InkWell(
                            onTap: () {
                              isVisible = !isVisible;
                              setState(() {});
                            },
                            child: Icon(
                              isVisible ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                              color: greyColor,
                              size: MySize.size26,
                            )),
                        tcPadding: 16,
                        bcPadding: 16,
                      ),
                      Space.height(16),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:MySize.getScaledSizeWidth(24.00) ),
              child: AppButton(
                  btnText: "Next",
                  bttxtColor: primaryWhite,
                  bgColor: primaryColor.withOpacity(0.25),
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const Verification()));
                  }),
            ),
            Space.height(24),
          ],
        ),
      ),
    );
  }
}
