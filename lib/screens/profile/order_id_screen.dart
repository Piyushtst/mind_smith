import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/order_id_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/app_images.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/widgets/app_ritchtext.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:order_tracker/order_tracker.dart';


class OrderIdScreen extends GetWidget<OrderIdController> {
  const OrderIdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<OrderIdController>(
      init: OrderIdController(),
      builder: (controller) {
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
                text: "Order ID: #723782837",
                size: 14.0,
                txtColor: textBlack,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Space.height(16),
                  Container(
                    margin: EdgeInsets.only(bottom:MySize.getScaledSizeHeight(16.00),),
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
                          Row(
                            children:  [
                              Image(
                                image:   AssetImage(AppImage.order),
                                fit: BoxFit.fill,
                                height: MySize.size44,
                                width: MySize.size44,
                              ),
                              SizedBox(width: MySize.size8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  AppText1(
                                    text: "Order Confirmed on 29 Jan 2022",
                                    size: 14.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  AppText1(
                                    text: "Order ID: #723782837",
                                    size: 14.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Space.height(16),
                          const Divider(
                            height: 0.8,
                            color: greyColor,
                          ),
                          Space.height(16),
                          Row(children: [
                            Image(
                              image:  AssetImage(AppImage.medicine),
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
                          Space.height(16),
                          Row(children: [
                            Image(
                              image:  AssetImage(AppImage.medicine),
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
                  Space.height(20),
                  OrderTracker(
                    status: Status.delivered,
                    activeColor: Colors.green,
                    inActiveColor: Colors.grey[300],
                    orderTitleAndDateList: controller.orderList,
                    shippedTitleAndDateList: controller.shippedList,
                    outOfDeliveryTitleAndDateList: controller.outOfDeliveryList,
                    deliveredTitleAndDateList: controller.deliveredList,

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
                  Space.height(32),
                ],
              ),
            ),
          ),
        );
      },);
  }

}
