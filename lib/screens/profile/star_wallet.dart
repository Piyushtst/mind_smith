import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/star_wallet_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';

/*class StarWalletScreen extends StatefulWidget {
  const StarWalletScreen({Key? key}) : super(key: key);

  @override
  State<StarWalletScreen> createState() => _StarWalletScreenState();
}

class _StarWalletScreenState extends State<StarWalletScreen> {
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
            text: "Star Wallet",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Space.height(24),
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryWhite,
                  border: Border.all(color: textFieldBorderColor),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00), vertical: MySize.getScaledSizeHeight(16.00)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText1(
                        text: "Wallet",
                        size: 16.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w500,
                      ),
                      Space.height(20),
                      AppText1(
                        text: "Your Balance",
                        size: 12.0,
                        txtColor: greyTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                      Space.height(4),
                      AppText1(
                        text: "\$200.21",
                        size: 32.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w600,
                      ),
                      Space.height(16),
                      Row(
                        children: [
                          Expanded(
                            child: AppButton2(
                                height: MySize.size50,
                                btnText: "Withdraw",
                                bdrColor: primaryWhite,
                                bttxtColor: blk,
                                bgColor: yelowShade,
                                onTap: () {
                                }),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: AppButton2(
                                height: MySize.size50,
                                bdrColor: primaryColor,
                                btnText: "Add money",
                                bttxtColor: primaryWhite,
                                bgColor: primaryColor,
                                onTap: () {
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Space.height(32),
              AppText1(
                text: "Transection History",
                size: 16.0,
                txtColor: textBlack,
                fontWeight: FontWeight.w500,
              ),
              Space.height(24),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 12,
                itemBuilder: (context, index) {
                return index==2 || index==5
                    ?Container(
                  margin: EdgeInsets.only(bottom: MySize.getScaledSizeHeight(16.00)),
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: primaryWhite,
                    border: Border.all(color: textFieldBorderColor),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00),vertical: MySize.getScaledSizeHeight(16.00)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Image(
                                  image: const AssetImage("assets/images/png/plus.png"),
                                  fit: BoxFit.fill,
                                  height: MySize.size24,
                                  width: MySize.size24,
                                ),
                              ],
                            ),
                            SizedBox(width: MySize.size17),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText1(
                                  text: "Money Added",
                                  size: 14.0,
                                  txtColor: textBlack,
                                  fontWeight: FontWeight.w500,
                                ),
                                Space.height(8),
                                AppText1(
                                  text: "\$200",
                                  size: 14.0,
                                  txtColor: blk,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            AppText1(
                              text: "+\$100",
                              size: 14.0,
                              txtColor: greenShade,
                              fontWeight: FontWeight.w500,
                            ),
                            Space.height(8),
                            AppText1(
                              text: "12 may, 2022",
                              size: 12.0,
                              txtColor: greyTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
                    :Container(
                  margin: EdgeInsets.only(bottom: MySize.getScaledSizeHeight(16.00)),
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: primaryWhite,
                    border: Border.all(color: textFieldBorderColor),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00),vertical: MySize.getScaledSizeHeight(16.00)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Image(
                                  image: const AssetImage("assets/images/png/phone.png"),
                                  fit: BoxFit.fill,
                                  height: MySize.size24,
                                  width: MySize.size24,
                                ),
                              ],
                            ),
                            SizedBox(width: MySize.size17),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText1(
                                  text: "Video Call - 10:30 min",
                                  size: 14.0,
                                  txtColor: textBlack,
                                  fontWeight: FontWeight.w500,
                                ),
                                Space.height(8),
                                AppText1(
                                  text: "John Doe name",
                                  size: 12.0,
                                  txtColor: greyTextColor,
                                  fontWeight: FontWeight.w400,
                                ),
                                Space.height(8),
                                AppText1(
                                  text: "Neurologist",
                                  size: 12.0,
                                  txtColor: primaryColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            AppText1(
                              text: "-\$5",
                              size: 14.0,
                              txtColor: textBlack,
                              fontWeight: FontWeight.w500,
                            ),
                            Space.height(8),
                            AppText1(
                              text: "12 may, 2022",
                              size: 12.0,
                              txtColor: greyTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },)

            ],
          ),
        ),
      ),
    );
  }
}*/



class StarWalletScreen extends GetWidget<StarWalletController> {
  const StarWalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<StarWalletController>(
      init: StarWalletController(),
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
                text: "Star Wallet",
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Space.height(24),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: primaryWhite,
                      border: Border.all(color: textFieldBorderColor),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00), vertical: MySize.getScaledSizeHeight(16.00)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText1(
                            text: "Wallet",
                            size: 16.0,
                            txtColor: blk,
                            fontWeight: FontWeight.w500,
                          ),
                          Space.height(20),
                          AppText1(
                            text: "Your Balance",
                            size: 12.0,
                            txtColor: greyTextColor,
                            fontWeight: FontWeight.w400,
                          ),
                          Space.height(4),
                          AppText1(
                            text: "\$200.21",
                            size: 32.0,
                            txtColor: blk,
                            fontWeight: FontWeight.w600,
                          ),
                          Space.height(16),
                          Row(
                            children: [
                              Expanded(
                                child: AppButton2(
                                    height: MySize.size50,
                                    btnText: "Withdraw",
                                    bdrColor: primaryWhite,
                                    bttxtColor: blk,
                                    bgColor: yelowShade,
                                    onTap: () {
                                    }),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: AppButton2(
                                    height: MySize.size50,
                                    bdrColor: primaryColor,
                                    btnText: "Add money",
                                    bttxtColor: primaryWhite,
                                    bgColor: primaryColor,
                                    onTap: () {
                                    }),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Space.height(32),
                  AppText1(
                    text: "Transection History",
                    size: 16.0,
                    txtColor: textBlack,
                    fontWeight: FontWeight.w500,
                  ),
                  Space.height(24),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return index==2 || index==5
                          ?Container(
                        margin: EdgeInsets.only(bottom: MySize.getScaledSizeHeight(16.00)),
                        alignment: Alignment.centerLeft,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: primaryWhite,
                          border: Border.all(color: textFieldBorderColor),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00),vertical: MySize.getScaledSizeHeight(16.00)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Image(
                                        image: const AssetImage("assets/images/png/plus.png"),
                                        fit: BoxFit.fill,
                                        height: MySize.size24,
                                        width: MySize.size24,
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: MySize.size17),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AppText1(
                                        text: "Money Added",
                                        size: 14.0,
                                        txtColor: textBlack,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      Space.height(8),
                                      AppText1(
                                        text: "\$200",
                                        size: 14.0,
                                        txtColor: blk,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  AppText1(
                                    text: "+\$100",
                                    size: 14.0,
                                    txtColor: greenShade,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Space.height(8),
                                  AppText1(
                                    text: "12 may, 2022",
                                    size: 12.0,
                                    txtColor: greyTextColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                          :Container(
                        margin: EdgeInsets.only(bottom: MySize.getScaledSizeHeight(16.00)),
                        alignment: Alignment.centerLeft,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: primaryWhite,
                          border: Border.all(color: textFieldBorderColor),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00),vertical: MySize.getScaledSizeHeight(16.00)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Image(
                                        image: const AssetImage("assets/images/png/phone.png"),
                                        fit: BoxFit.fill,
                                        height: MySize.size24,
                                        width: MySize.size24,
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: MySize.size17),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AppText1(
                                        text: "Video Call - 10:30 min",
                                        size: 14.0,
                                        txtColor: textBlack,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      Space.height(8),
                                      AppText1(
                                        text: "John Doe name",
                                        size: 12.0,
                                        txtColor: greyTextColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Space.height(8),
                                      AppText1(
                                        text: "Neurologist",
                                        size: 12.0,
                                        txtColor: primaryColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  AppText1(
                                    text: "-\$5",
                                    size: 14.0,
                                    txtColor: textBlack,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Space.height(8),
                                  AppText1(
                                    text: "12 may, 2022",
                                    size: 12.0,
                                    txtColor: greyTextColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },)

                ],
              ),
            ),
          ),
        );
      },);
  }

}