import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/payment/payment_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_ritchtext.dart';
import 'package:mind_smith/widgets/app_text.dart';

class SelectAddress extends StatefulWidget {
  const SelectAddress({Key? key}) : super(key: key);

  @override
  State<SelectAddress> createState() => _SelectAddressState();
}

class _SelectAddressState extends State<SelectAddress> {
  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        leadingWidth: MySize.size30,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: MySize.getScaledSizeWidth(24.00)),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios, color: textBlack, size: MySize.size20)),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: AppText1(
            text: "Select Address",
            size: 14.0,
            txtColor: textBlack,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Space.height(16),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryWhite,
                        border: Border.all(color: greenShade),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(14.00), horizontal: MySize.getScaledSizeHeight(18.00)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Image(
                            image: const AssetImage("assets/images/png/greenround.png"),
                            fit: BoxFit.fill,
                            height: MySize.size26,
                            width: MySize.size26,
                          ),
                          SizedBox(width: MySize.size14),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AppText1(
                                text: "Name Surname",
                                size: 16.0,
                                txtColor: blk,
                                fontWeight: FontWeight.w500,
                              ),
                              Space.height(12),
                              AppText1(
                                text: "Address line 1",
                                size: 14.0,
                                txtColor: greyColor,
                                fontWeight: FontWeight.w400,
                                maxLine: 3,
                              ),
                              Space.height(6),
                              AppText1(
                                text: "Address line 2",
                                size: 14.0,
                                txtColor: greyColor,
                                fontWeight: FontWeight.w400,
                                maxLine: 3,
                              ),
                              Space.height(6),
                              AppText1(
                                text: "City, State, Country",
                                size: 14.0,
                                txtColor: greyColor,
                                fontWeight: FontWeight.w400,
                                maxLine: 3,
                              ),
                              Space.height(6),
                              AppText1(
                                text: "Pin code - 000000",
                                size: 14.0,
                                txtColor: greyColor,
                                fontWeight: FontWeight.w400,
                                maxLine: 3,
                              ),
                              Space.height(8),
                              AppRitchText3(
                                text: "Mobile: ",
                                size: 14,
                                fontWeight: FontWeight.w400,
                                txtColor: greyColor,
                                text2: "9898989898",
                                size2: 14,
                                fontWeight2: FontWeight.w500,
                                txtColor2: blk,
                              ),
                              Space.height(16),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                AppText1(
                                  text: "Edit",
                                  size: 14.0,
                                  txtColor: blueColor,
                                  fontWeight: FontWeight.w500,
                                  maxLine: 3,
                                ),SizedBox(width: MySize.size20),
                                AppText1(
                                  text: "Delete",
                                  size: 14.0,
                                  txtColor: redColor,
                                  fontWeight: FontWeight.w500,
                                  maxLine: 3,
                                ),
                              ]),
                            ],
                          ),
                        ]),
                      ),
                    ),
                    Space.height(16),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryWhite,
                        border: Border.all(color: textFieldBorderColor),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(14.00), horizontal: MySize.getScaledSizeHeight(18.00)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Image(
                            image: const AssetImage("assets/images/png/round.png"),
                            fit: BoxFit.fill,
                            height: MySize.size26,
                            width: MySize.size26,
                          ),
                          SizedBox(width: MySize.size14),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AppText1(
                                text: "Name Surname",
                                size: 16.0,
                                txtColor: blk,
                                fontWeight: FontWeight.w500,
                              ),
                              Space.height(12),
                              AppText1(
                                text: "Address line 1",
                                size: 14.0,
                                txtColor: greyColor,
                                fontWeight: FontWeight.w400,
                                maxLine: 3,
                              ),
                              Space.height(6),
                              AppText1(
                                text: "Address line 2",
                                size: 14.0,
                                txtColor: greyColor,
                                fontWeight: FontWeight.w400,
                                maxLine: 3,
                              ),
                              Space.height(6),
                              AppText1(
                                text: "City, State, Country",
                                size: 14.0,
                                txtColor: greyColor,
                                fontWeight: FontWeight.w400,
                                maxLine: 3,
                              ),
                              Space.height(6),
                              AppText1(
                                text: "Pin code - 000000",
                                size: 14.0,
                                txtColor: greyColor,
                                fontWeight: FontWeight.w400,
                                maxLine: 3,
                              ),
                              Space.height(8),
                              AppRitchText3(
                                text: "Mobile: ",
                                size: 14,
                                fontWeight: FontWeight.w400,
                                txtColor: greyColor,
                                text2: "9898989898",
                                size2: 14,
                                fontWeight2: FontWeight.w500,
                                txtColor2: blk,
                              ),
                              Space.height(16),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                AppText1(
                                  text: "Edit",
                                  size: 14.0,
                                  txtColor: blueColor,
                                  fontWeight: FontWeight.w500,
                                  maxLine: 3,
                                ),SizedBox(width: MySize.size20),
                                AppText1(
                                  text: "Delete",
                                  size: 14.0,
                                  txtColor: redColor,
                                  fontWeight: FontWeight.w500,
                                  maxLine: 3,
                                ),
                              ]),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AppButton(
                height: MySize.size48,
                btnText: "Next",
                bttxtColor: primaryWhite,
                bgColor: primaryColor,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentScreen()));
                }),
            Space.height(24),
          ],
        ),
      ),
    );
  }
}
