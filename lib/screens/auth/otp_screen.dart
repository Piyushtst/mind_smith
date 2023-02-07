import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/auth/enter_otp_screen.dart';
import 'package:mind_smith/screens/auth/verification_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/textfield.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                        text: "Enter your",
                        size: 32.0,
                        txtColor: textBlack,
                        fontWeight: FontWeight.w600,
                      ),
                      Space.height(16),
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
                        hintText: "Enter your phone number",
                        prefixIco: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: Image(
                            image: const AssetImage("assets/images/png/fone.png"),
                            height: MySize.size16,
                            width: MySize.size14,
                          ),
                        ),
                        maxLines: 1,
                        tcPadding: 16,
                        bcPadding: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:MySize.getScaledSizeWidth(24.00) ),
              child: AppButton(
                  btnText: "Get Otp",
                  bttxtColor: primaryWhite,
                  bgColor: primaryColor.withOpacity(0.25),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const EnterOtp()));
                  }),
            ),
            Space.height(24),
          ],
        ),
      ),
    );
  }
}
