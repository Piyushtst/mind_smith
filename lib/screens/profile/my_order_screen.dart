import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/my_order_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/app_images.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/profile/order_id_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';


class MyOrderScreen extends GetWidget<MyOrderController> {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<MyOrderController>(
      init: MyOrderController(),
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
                text: "My Orders",
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
                      children: [
                        Space.height(16),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return  Container(
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
                                        index==0
                                            ? Image(
                                          image:   AssetImage(AppImage.order),
                                          fit: BoxFit.fill,
                                          height: MySize.size44,
                                          width: MySize.size44,
                                        )
                                            :Image(
                                          image:   AssetImage(AppImage.ven),
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
                                    if(index==0)...[
                                      Space.height(16),
                                      Row(children: [
                                        Image(
                                          image:  AssetImage(AppImage.medicine1),
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
                                    ]

                                  ],
                                ),
                              ),
                            );
                          },)

                      ],
                    ),
                  ),
                ),
                AppButton(
                    btnText: "Submit",
                    bttxtColor: primaryWhite,
                    bgColor: primaryColor,
                    onTap: () {
                      Get.to(() => const OrderIdScreen());//Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderIdScreen()));
                    }),
                Space.height(24),
              ],
            ),
          ),
        );
      },);
  }

}
