import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/auth/otp_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Space.height(68),
                    Image(
                      image:  const AssetImage("assets/images/png/verify.png"),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpScreen()));
                  }),
              Space.height(24),
            ],
          ),
        ),
      ),
    );
  }
}
