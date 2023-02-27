import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/my_report_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/app_images.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/my_report/manage_eccess.dart';
import 'package:mind_smith/widgets/app_text.dart';

/*class NyReports extends StatefulWidget {
  const NyReports({Key? key}) : super(key: key);

  @override
  State<NyReports> createState() => _NyReportsState();
}

class _NyReportsState extends State<NyReports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgWhite,
      appBar: AppBar(
        leadingWidth: MySize.size1,
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.centerLeft,
          child: AppText1(
            text: "Select Address",
            size: 14.0,
            txtColor: textBlack,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: MySize.getScaledSizeWidth(24.00)),
            child: Row(
              children: [
                Image(
                  image: const AssetImage("assets/images/png/profileicon.png"),
                  fit: BoxFit.contain,
                  height: MySize.size23,
                  width: MySize.size23,
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Space.height(24),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 14,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: MySize.getScaledSizeHeight(16.00)),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const ManageEccess()));
                            },
                            child: Container(
                              alignment: Alignment.centerLeft,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: primaryWhite,
                                border: Border.all(color: textFieldBorderColor),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Column(
                                children: [
                                  Image(image: const AssetImage("assets/images/png/rerport.png"), fit: BoxFit.fill, height: MySize.size148, width: MySize.size148),
                                  Container(
                                    // height: 30,
                                    alignment: Alignment.centerLeft,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      color: lightGrey,
                                      //border: Border.all(color: textFieldBorderColor),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(18),
                                        bottomRight: Radius.circular(18),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(12.00), vertical: MySize.getScaledSizeHeight(12.00)),
                                      child: Row(
                                        children: [
                                          Image(image: const AssetImage("assets/images/png/test.png"), fit: BoxFit.fill, height: MySize.size30, width: MySize.size30),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          AppText1(
                                            text: "Blood count",
                                            size: 14.0,
                                            txtColor: blk,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MySize.size16,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: primaryWhite,
                              border: Border.all(color: textFieldBorderColor),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Column(
                              children: [
                                Image(image: const AssetImage("assets/images/png/rerport.png"), fit: BoxFit.fill, height: MySize.size148, width: MySize.size148),
                                Container(
                                  // height: 30,
                                  alignment: Alignment.centerLeft,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: lightGrey,
                                    //border: Border.all(color: textFieldBorderColor),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(18),
                                      bottomRight: Radius.circular(18),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(12.00), vertical: MySize.getScaledSizeHeight(12.00)),
                                    child: Row(
                                      children: [
                                        Image(image: const AssetImage("assets/images/png/test.png"), fit: BoxFit.fill, height: MySize.size30, width: MySize.size30),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        AppText1(
                                          text: "Blood count",
                                          size: 14.0,
                                          txtColor: blk,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/



class NyReports extends GetWidget<MyReportController> {
  const NyReports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<MyReportController>(
      init: MyReportController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: bgWhite,
          appBar: AppBar(
            leadingWidth: MySize.size1,
            elevation: 0.5,
            backgroundColor: Colors.white,

            title: Align(
              alignment: Alignment.centerLeft,
              child: AppText1(
                text: "My Reports",
                size: 14.0,
                txtColor: textBlack,
                fontWeight: FontWeight.w500,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: MySize.getScaledSizeWidth(24.00)),
                child: Row(
                  children: [
                    Image(
                      image:  AssetImage(AppImage.profileIcon),
                      fit: BoxFit.contain,
                      height: MySize.size23,
                      width: MySize.size23,
                    ),
                  ],
                ),
              )
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Space.height(24),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 14,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: MySize.getScaledSizeHeight(16.00)),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Get.to(() => const ManageEccess());//Navigator.push(context, MaterialPageRoute(builder: (context) => const ManageEccess()));
                                },
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: primaryWhite,
                                    border: Border.all(color: textFieldBorderColor),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  child: Column(
                                    children: [
                                      Image(image:  AssetImage(AppImage.report), fit: BoxFit.fill, height: MySize.size148, width: MySize.size148),
                                      Container(
                                        // height: 30,
                                        alignment: Alignment.centerLeft,
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
                                          color: lightGrey,
                                          //border: Border.all(color: textFieldBorderColor),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(18),
                                            bottomRight: Radius.circular(18),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(12.00), vertical: MySize.getScaledSizeHeight(12.00)),
                                          child: Row(
                                            children: [
                                              Image(image:  AssetImage(AppImage.test), fit: BoxFit.fill, height: MySize.size30, width: MySize.size30),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              AppText1(
                                                text: "Blood count",
                                                size: 14.0,
                                                txtColor: blk,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MySize.size16,
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: primaryWhite,
                                  border: Border.all(color: textFieldBorderColor),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Column(
                                  children: [
                                    Image(image:  AssetImage(AppImage.report), fit: BoxFit.fill, height: MySize.size148, width: MySize.size148),
                                    Container(
                                      // height: 30,
                                      alignment: Alignment.centerLeft,
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                        color: lightGrey,
                                        //border: Border.all(color: textFieldBorderColor),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(18),
                                          bottomRight: Radius.circular(18),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(12.00), vertical: MySize.getScaledSizeHeight(12.00)),
                                        child: Row(
                                          children: [
                                            Image(image:  AssetImage(AppImage.test), fit: BoxFit.fill, height: MySize.size30, width: MySize.size30),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            AppText1(
                                              text: "Blood count",
                                              size: 14.0,
                                              txtColor: blk,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },);
  }
}