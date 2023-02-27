import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/filter_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/app_images.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';


class FilterScreen extends GetWidget<FilterController> {
  FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<FilterController>(
      init: FilterController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0.5,
            leadingWidth: MySize.size90,
            backgroundColor: Colors.white,
            leading: Padding(
              padding: EdgeInsets.only(
                left: MySize.getScaledSizeWidth(24.00),
              ),
              child: Center(
                child: AppText1(
                  text: "Filter:",
                  size: 14.0,
                  txtColor: blk,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: MySize.getScaledSizeWidth(24.00)),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Image(
                      image:  AssetImage(AppImage.multiply),
                      fit: BoxFit.contain,
                      height: MySize.size24,
                      width: MySize.size24,
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Space.height(24),
                  AppText1(
                    text: "Experience",
                    size: 16.0,
                    txtColor: blk,
                    fontWeight: FontWeight.w500,
                  ),
                  Space.height(12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText1(
                        text: "0Y",
                        size: 14.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w500,
                      ),
                      AppText1(
                        text: "+10 Y",
                        size: 14.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: Obx(() => RangeSlider(
                      activeColor: yelowShade,
                      values: RangeValues(controller.lowerValue.value, controller.upperValue.value),
                      min: 0.0,
                      max: 1.0,
                      divisions: 10,
                      labels: const RangeLabels('Lower', 'Upper'),
                      onChanged: (newValues) {
                        controller.lowerValue.value = newValues.start;
                        controller.upperValue.value = newValues.end;
                        //setState(() {});
                      },
                    ),),
                  ),
                  Space.height(10),
                  const Divider(color: textFieldBorderColor, height: 1, thickness: 1),
                  Space.height(24),
                  AppText1(
                    text: "Specialisation ",
                    size: 16.0,
                    txtColor: blk,
                    fontWeight: FontWeight.w500,
                  ),
                  Space.height(12),

                  Wrap(
                    spacing: 12,
                    runSpacing: 10,
                    children: [
                      Obx(() => InkWell(
                        onTap: () {
                          controller.isColor.value="Gynaecologist";
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: controller.isColor.value=="Gynaecologist"?yelowShade:primaryWhite,
                            border: Border.all(color: controller.isColor.value=="Gynaecologist"?yelowShade:greyColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(14.00), vertical: MySize.getScaledSizeWidth(6.00)),
                            child: AppText1(
                              text: "Gynaecologist",
                              size: 14.0,
                              txtColor: greyColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),),
                      Obx(() => InkWell(
                        onTap: () {
                          controller.isColor.value="Neurologist";
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: controller.isColor.value=="Neurologist"?yelowShade:primaryWhite,
                            border: Border.all(color: controller.isColor.value=="Neurologist"?yelowShade:greyColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(14.00), vertical: MySize.getScaledSizeWidth(6.00)),
                            child: AppText1(
                              text: "Neurologist",
                              size: 14.0,
                              txtColor: greyColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),),
                      Obx(() => InkWell(
                        onTap: () {
                          controller.isColor.value="Ophthalmologist";
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: controller.isColor.value=="Ophthalmologist"?yelowShade:primaryWhite,
                            border: Border.all(color: controller.isColor.value=="Ophthalmologist"?yelowShade:greyColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(14.00), vertical: MySize.getScaledSizeWidth(6.00)),
                            child: AppText1(
                              text: "Ophthalmologist",
                              size: 14.0,
                              txtColor: greyColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),),
                      Obx(() => InkWell(
                        onTap: () {
                          controller.isColor.value="Gynacologist";
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: controller.isColor.value=="Gynacologist"?yelowShade:primaryWhite,
                            border: Border.all(color: controller.isColor.value=="Gynacologist"?yelowShade:greyColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(14.00), vertical: MySize.getScaledSizeWidth(6.00)),
                            child: AppText1(
                              text: "Gynacologist",
                              size: 14.0,
                              txtColor: greyColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),),
                      Obx(() => InkWell(
                        onTap: () {
                          controller.isColor.value="Dentist";
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: controller.isColor.value=="Dentist"?yelowShade:primaryWhite,
                            border: Border.all(color: controller.isColor.value=="Dentist"?yelowShade:greyColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(14.00), vertical: MySize.getScaledSizeWidth(6.00)),
                            child: AppText1(
                              text: "Dentist",
                              size: 14.0,
                              txtColor: greyColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),),
                      Obx(() => InkWell(
                        onTap: () {
                          controller.isColor.value="Cardiologist";
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: controller.isColor.value=="Cardiologist"?yelowShade:primaryWhite,
                            border: Border.all(color: controller.isColor.value=="Cardiologist"?yelowShade:greyColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(14.00), vertical: MySize.getScaledSizeWidth(6.00)),
                            child: AppText1(
                              text: "Cardiologist",
                              size: 14.0,
                              txtColor: greyColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),),
                      Obx(() => InkWell(
                        onTap: () {
                          controller.isColor.value="Orthologist";
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: controller.isColor.value=="Orthologist"?yelowShade:primaryWhite,
                            border: Border.all(color: controller.isColor.value=="Orthologist"?yelowShade:greyColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(14.00), vertical: MySize.getScaledSizeWidth(6.00)),
                            child: AppText1(
                              text: "Orthologist",
                              size: 14.0,
                              txtColor: greyColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),),
                    ],
                  ),
                  Space.height(24),
                  const Divider(color: textFieldBorderColor, height: 1, thickness: 1),
                  Space.height(24),
                  AppText1(
                    text: "Availability ",
                    size: 16.0,
                    txtColor: blk,
                    fontWeight: FontWeight.w500,
                  ),
                  Space.height(12),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: greyColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(14.00), vertical: MySize.getScaledSizeWidth(6.00)),
                      child: AppText1(
                        text: "Show available only",
                        size: 14.0,
                        txtColor: greyColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Space.height(24),
                  const Divider(color: textFieldBorderColor, height: 1, thickness: 1),
                  Space.height(24),
                  AppText1(
                    text: "Min Ratings",
                    size: 16.0,
                    txtColor: blk,
                    fontWeight: FontWeight.w500,
                  ),
                  Space.height(24),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star_outline,
                      size: MySize.size26,
                      color: starColor,
                    ),
                    onRatingUpdate: (rating) {
                      // print(rating);
                    },
                  ),
                  Space.height(27),
                  const Divider(color: textFieldBorderColor, height: 1, thickness: 1),
                  Space.height(24),
                  AppText1(
                    text: "Charges per 15 minute",
                    size: 16.0,
                    txtColor: blk,
                    fontWeight: FontWeight.w500,
                  ),
                  Space.height(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText1(
                        text: "\$1",
                        size: 14.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w500,
                      ),
                      AppText1(
                        text: "\$200",
                        size: 14.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: Obx(() => RangeSlider(
                      activeColor: yelowShade,
                      values: RangeValues(controller.lowerValue.value, controller.upperValue.value),
                      min: 0.0,
                      max: 1.0,
                      divisions: 10,
                      labels: const RangeLabels('Lower', 'Upper'),
                      onChanged: (newValues) {
                        controller.lowerValue.value = newValues.start;
                        controller.upperValue.value = newValues.end;
                        //setState(() {});
                      },
                    ),),
                  ),
                  Space.height(30),
                  Row(
                    children: [
                      Expanded(
                        child: AppButton1(btnText: "Clear", bttxtColor: textBlack, bgColor: Colors.white, onTap: () {}),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: AppButton3(btnText: "Apply", bttxtColor: primaryWhite, bgColor: primaryColor, onTap: () {}),
                      ),
                    ],
                  ),
                  Space.height(16),
                ],
              ),
            ),
          ),
        );
      },);
  }
}