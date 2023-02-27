import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/search_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/app_images.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/home/filter_or_sort_screen.dart';
import 'package:mind_smith/screens/navigationbar/nav_screen.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/search_textfield.dart';


class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<SearchController>(
      init: SearchController(),
      builder: (controller) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
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
            title: SearcTextField2(context),
          ),
          body: Column(
            children: [
              Space.height(24),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                  child: SingleChildScrollView(
                    child: Container(
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.img1.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Get.to(() =>  FilterOrShortScreen());//Navigator.push(context, MaterialPageRoute(builder: (context) => const FilterOrShortScreen()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: MySize.getScaledSizeWidth(17.00)),
                              // height: 300,
                              width: MySize.size180,
                              decoration: BoxDecoration(
                                border: Border.all(color: textFieldBorderColor),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00), vertical: MySize.getScaledSizeHeight(16.00)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image(
                                          image: AssetImage("${controller.img1[index]}"),
                                          height: MySize.size60,
                                        ),
                                        Column(
                                          children: [
                                            AppText1(
                                              text: "John Doe name • 5Y",
                                              size: 14.0,
                                              txtColor: blk,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            Space.height(4),
                                            FittedBox(
                                              child: AppText1(
                                                text: "English • Kanadda • Tamil",
                                                size: 14.0,
                                                txtColor: greyColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.favorite_border,
                                          color: textBlack,
                                          size: MySize.size30,
                                        )
                                      ],
                                    ),
                                    Space.height(16),
                                    Row(
                                      children: [
                                        Container(
                                          height: MySize.size20,
                                          width: 2,
                                          color: primaryColor,
                                        ),
                                        const SizedBox(width: 4),
                                        AppText1(
                                          text: "Neurologist",
                                          size: 14.0,
                                          txtColor: primaryColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                    Space.height(8),
                                    AppText1(
                                      text: "MBBS || DNB - Neurosurgery",
                                      size: 12.0,
                                      txtColor: blk,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    Space.height(21),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Image(
                                                image:  AssetImage(AppImage.star),
                                                width: MySize.size14,
                                                height: MySize.size14,
                                                fit: BoxFit.fill,
                                              ),
                                              const SizedBox(width: 4),
                                              AppText1(
                                                text: "4.64",
                                                size: 14.0,
                                                txtColor: yellowColor,
                                                fontWeight: FontWeight.w600,
                                              ),
                                              const SizedBox(width: 4),
                                              AppText1(
                                                text: "(27)",
                                                size: 14.0,
                                                txtColor: blk,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              Space.height(16),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: primaryColor),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00), vertical: MySize.getScaledSizeWidth(2.00)),
                                            child: AppText1(
                                              text: "View",
                                              size: 14.0,
                                              txtColor: primaryColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              const botmbar(),
              // NavScreen(),
            ],
          ),
        );
      },);
  }
}