import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/widgets/app_ritchtext.dart';
import 'package:mind_smith/widgets/app_text.dart';

class ConfirmedOrderScreen extends StatefulWidget {
  const ConfirmedOrderScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmedOrderScreen> createState() => _ConfirmedOrderScreenState();
}

class _ConfirmedOrderScreenState extends State<ConfirmedOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgWhite,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                      children: [

                    Space.height(17),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image(
                          image: const AssetImage("assets/images/png/roundcross.png"),
                          height: MySize.size20,
                          width: MySize.size20,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Space.height(41),
                    Center(
                      child: Image(
                        image: const AssetImage("assets/images/png/confirmed.png"),
                        height: MySize.size80,
                        width: MySize.size80,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Space.height(20),
                    AppText1(
                      text: "Your order is confirmed",
                      size: 24.0,
                      txtColor: blk,
                      fontWeight: FontWeight.w600,
                    ),
                    Space.height(24),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(color: lightGrey, borderRadius: BorderRadius.circular(14)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00), horizontal: MySize.getScaledSizeHeight(18.00)),
                        child: FittedBox(
                          child: Column(
                            children: [
                              AppText1(
                                text: "Order ID: #987654321",
                                size: 20.0,
                                txtColor: blk,
                                fontWeight: FontWeight.w500,
                              ),
                              Space.height(16),
                              AppText1(
                                text: "Your order is placed,\nKindly complete the confirmation process",
                                size: 12.0,
                                txtColor: textgreyColor,
                                fontWeight: FontWeight.w400,
                                maxLine: 2,
                                txtAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Space.height(20),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryWhite,
                        border: Border.all(color: textFieldBorderColor),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(22.00), horizontal: MySize.getScaledSizeHeight(20.00)),
                        child: FittedBox(
                          child: Column(
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
                              Space.height(12),
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
                            ],
                          ),
                        ),
                      ),
                    ),
                    Space.height(20),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryWhite,
                        border: Border.all(color: textFieldBorderColor),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(22.00), horizontal: MySize.getScaledSizeHeight(20.00)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppText1(
                              text: "Price Details",
                              size: 16.0,
                              txtColor: blk,
                              fontWeight: FontWeight.w500,
                            ),
                            Space.height(16),
                            const Divider(
                              height: 1,
                              color: textFieldBorderColor,
                            ),
                            Space.height(16),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText1(
                                    text: "Cart Total (3 items)",
                                    size: 14.0,
                                    txtColor: textgreyColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  AppRitchText3(text: "\$60 ",size: 14,fontWeight: FontWeight.w400,txtColor: greyColor, text2: "\$40",size2: 14,fontWeight2: FontWeight.w500,txtColor2: blk,),
                                ]
                            ),
                            Space.height(12),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText1(
                                    text: "Shipping Charges",
                                    size: 14.0,
                                    txtColor: textgreyColor,
                                    fontWeight: FontWeight.w400,
                                  ),AppText1(
                                    text: "\$5",
                                    size: 14.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ]
                            ),
                            Space.height(16),
                            const Divider(
                              height: 1,
                              color: textFieldBorderColor,
                            ),
                            Space.height(16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppText1(
                                  text: "Total Amount Payable",
                                  size: 16.0,
                                  txtColor: textBlack,
                                  fontWeight: FontWeight.w500,
                                ),AppText1(
                                  text: "\$45",
                                  size: 16.0,
                                  txtColor: textBlack,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Space.height(30),
                    AppText1(
                      text: "See Order Details",
                      size: 16.0,
                      txtColor: primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                    Space.height(10),
                  ]),
                ),
              ),
              //Space.height(10),
              const SizedBox(height: 1,),
            ],
          ),
        ),
      ),
    );
  }
}
