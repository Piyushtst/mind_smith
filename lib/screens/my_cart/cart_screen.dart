import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/call_details/assessment_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_ritchtext.dart';
import 'package:mind_smith/widgets/app_text.dart';

import 'select_address.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
            text: "My Cart",
            size: 14.0,
            txtColor: textBlack,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
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
                        border: Border.all(color: textFieldBorderColor),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(14.00), horizontal: MySize.getScaledSizeHeight(18.00)),
                        child: Column(
                          children: [
                            Row(children: [
                              Image(
                                image: const AssetImage("assets/images/png/medicine.png"),
                                fit: BoxFit.fill,
                                height: MySize.size80,
                                width: MySize.size80,
                              ),
                              SizedBox(width: MySize.size25),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  AppText1(
                                    text: "Paracetamol 500mg",
                                    size: 14.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Space.height(12),
                                  Row(
                                    children: [
                                      AppText1(
                                        text: "\$30",
                                        size: 14.0,
                                        txtColor: greyColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      const SizedBox(width: 4),
                                      AppText1(
                                        text: "\$30",
                                        size: 16.0,
                                        txtColor: blk,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      const SizedBox(width: 4),
                                      Container(
                                        height: MySize.size14,
                                        width: 1,
                                        color: greyColor,
                                      ),
                                      const SizedBox(width: 4),
                                      AppText1(
                                        text: "30% OFF",
                                        size: 16.0,
                                        txtColor: greenShade,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                  Space.height(12),
                                  Row(
                                    children: [
                                      AppText1(
                                        text: "Qty: ",
                                        size: 14.0,
                                        txtColor: greyColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      const SizedBox(width: 4),
                                      AppText1(
                                        text: "2",
                                        size: 14.0,
                                        txtColor: blk,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ]),
                          ],
                        ),
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
                        child: Column(
                          children: [
                            Row(children: [
                              Image(
                                image: const AssetImage("assets/images/png/medicine1.png"),
                                fit: BoxFit.fill,
                                height: MySize.size80,
                                width: MySize.size80,
                              ),
                              SizedBox(width: MySize.size25),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  AppText1(
                                    text: "Paracetamol 500mg",
                                    size: 14.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Space.height(12),
                                  Row(
                                    children: [
                                      AppText1(
                                        text: "\$30",
                                        size: 14.0,
                                        txtColor: greyColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      const SizedBox(width: 4),
                                      AppText1(
                                        text: "\$30",
                                        size: 16.0,
                                        txtColor: blk,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      const SizedBox(width: 4),
                                      Container(
                                        height: MySize.size14,
                                        width: 1,
                                        color: greyColor,
                                      ),
                                      const SizedBox(width: 4),
                                      AppText1(
                                        text: "30% OFF",
                                        size: 16.0,
                                        txtColor: greenShade,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                  Space.height(12),
                                  Row(
                                    children: [
                                      AppText1(
                                        text: "Qty: ",
                                        size: 14.0,
                                        txtColor: greyColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      const SizedBox(width: 4),
                                      AppText1(
                                        text: "1",
                                        size: 14.0,
                                        txtColor: blk,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ),
                    Space.height(32),
                    AppText1(
                      text: "Price Details",
                      size: 16.0,
                      txtColor: textBlack,
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
                            text: "Cart Total (3 items)",
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
            AppButton(
                height: MySize.size48,
                btnText: "Proceed",
                bttxtColor: primaryWhite,
                bgColor: primaryColor,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SelectAddress()));
                }),
            Space.height(24),
          ],
        ),
      ),
    );
  }
}
