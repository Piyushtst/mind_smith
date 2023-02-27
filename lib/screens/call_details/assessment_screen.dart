import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/assesment_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/textfield.dart';

/*class AssessmentScreen extends StatefulWidget {
  const AssessmentScreen({Key? key}) : super(key: key);

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> {
  bool isVisible = false;
  bool isMale = false;
  bool FeMale = false;
  bool orher = false;

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return Scaffold(
      //resizeToAvoidBottomInset: false,
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
              child: Icon(Icons.arrow_back_ios, color: textBlack, size: MySize.size20),
          ),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: AppText1(
            text: "Assessment",
            size: 14.0,
            txtColor: textBlack,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Space.height(24),
                    AppText1(
                      text: "Name",
                      size: 12.0,
                      txtColor: greyTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                    Space.height(6),
                    AppTextField(
                      hintText: "Name",
                      maxLines: 1,
                      tcPadding: 16,
                      bcPadding: 16,
                    ),
                    Space.height(24),
                    AppText1(
                      text: "Email",
                      size: 12.0,
                      txtColor: greyTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                    Space.height(6),
                    AppTextField(
                      hintText: "Email",
                      maxLines: 1,
                      tcPadding: 16,
                      bcPadding: 16,
                    ),
                    Space.height(24),
                    AppText1(
                      text: "Phone Number",
                      size: 12.0,
                      txtColor: greyTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                    Space.height(6),
                    AppTextField(
                      hintText: "Phone",
                      maxLines: 1,
                      tcPadding: 16,
                      bcPadding: 16,
                    ),
                    Space.height(24),
                    AppText1(
                      text: "Gender",
                      size: 12.0,
                      txtColor: greyTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                    Space.height(6),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isMale = true;
                                FeMale = false;
                                orher = false;
                              });
                            },
                            child: Container(
                              alignment: Alignment.centerLeft,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: isMale ? primaryColor : primaryWhite,
                                border: Border.all(color: isMale ? primaryColor : textFieldBorderColor),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
                                child: Center(
                                  child: AppText1(
                                    text: "Male",
                                    size: 14.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {

                                FeMale = true;
                                isMale = false;
                                orher = false;
                              });

                            },
                            child: Container(
                              alignment: Alignment.centerLeft,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FeMale ? primaryColor : primaryWhite,
                                border: Border.all(color: FeMale ? primaryColor : textFieldBorderColor),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
                                child: Center(
                                  child: AppText1(
                                    text: "Female",
                                    size: 14.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                orher = true;
                                isMale = false;
                                FeMale = false;

                              });

                            },
                            child: Container(
                              alignment: Alignment.centerLeft,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: orher ? primaryColor : primaryWhite,
                                border: Border.all(color: orher ? primaryColor : textFieldBorderColor),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
                                child: Center(
                                  child: AppText1(
                                    text: "Other",
                                    size: 14.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Space.height(32),
                    AppText1(
                      text: "Reason for visit",
                      size: 12.0,
                      txtColor: greyTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                    Space.height(6),
                    AppTextField(
                      hintText: "Type Here",
                      maxLines: 3,
                      tcPadding: 16,
                      bcPadding: 16,
                    ),
                    Space.height(24),
                    AppText1(
                      text: "Diagnosis",
                      size: 12.0,
                      txtColor: greyTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                    Space.height(6),
                    AppTextField(
                      hintText: "Type Here",
                      maxLines: 3,
                      tcPadding: 16,
                      bcPadding: 16,
                    ),
                    Space.height(24),
                    AppText1(
                      text: "Signs and Symptoms",
                      size: 12.0,
                      txtColor: greyTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                    Space.height(6),
                    AppTextField(
                      hintText: "Type Here",
                      maxLines: 3,
                      tcPadding: 16,
                      bcPadding: 16,
                    ),
                    Space.height(48),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/






class AssessmentScreen extends GetWidget<AssestmentController> {
  const AssessmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<AssestmentController>(
      init: AssestmentController(),
      builder: (controller) {
        return Scaffold(
          //resizeToAvoidBottomInset: false,
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
                child: Icon(Icons.arrow_back_ios, color: textBlack, size: MySize.size20),
              ),
            ),
            title: Align(
              alignment: Alignment.centerLeft,
              child: AppText1(
                text: "Assessment",
                size: 14.0,
                txtColor: textBlack,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Space.height(24),
                        AppText1(
                          text: "Name",
                          size: 12.0,
                          txtColor: greyTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                        Space.height(6),
                        AppTextField(
                          hintText: "Name",
                          maxLines: 1,
                          tcPadding: 16,
                          bcPadding: 16,
                        ),
                        Space.height(24),
                        AppText1(
                          text: "Email",
                          size: 12.0,
                          txtColor: greyTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                        Space.height(6),
                        AppTextField(
                          hintText: "Email",
                          maxLines: 1,
                          tcPadding: 16,
                          bcPadding: 16,
                        ),
                        Space.height(24),
                        AppText1(
                          text: "Phone Number",
                          size: 12.0,
                          txtColor: greyTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                        Space.height(6),
                        AppTextField(
                          hintText: "Phone",
                          maxLines: 1,
                          tcPadding: 16,
                          bcPadding: 16,
                        ),
                        Space.height(24),
                        AppText1(
                          text: "Gender",
                          size: 12.0,
                          txtColor: greyTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                        Space.height(6),
                        Row(
                          children: [
                            Expanded(
                              child: Obx(() => InkWell(
                                onTap: () {
                                  controller.isMale.value = true;
                                  controller.FeMale.value = false;
                                  controller.orher.value = false;
                                },
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: controller.isMale.value ? primaryColor : primaryWhite,
                                    border: Border.all(color: controller.isMale.value ? primaryColor : textFieldBorderColor),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
                                    child: Center(
                                      child: AppText1(
                                        text: "Male",
                                        size: 14.0,
                                        txtColor: blk,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Obx(() => InkWell(
                                onTap: () {
                                  controller.FeMale.value = true;
                                  controller.isMale.value = false;
                                  controller.orher.value = false;

                                },
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: controller.FeMale.value ? primaryColor : primaryWhite,
                                    border: Border.all(color: controller.FeMale.value ? primaryColor : textFieldBorderColor),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
                                    child: Center(
                                      child: AppText1(
                                        text: "Female",
                                        size: 14.0,
                                        txtColor: blk,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Obx(() => InkWell(
                                onTap: () {
                                  controller.orher.value = true;
                                  controller.isMale.value = false;
                                  controller.FeMale.value = false;

                                },
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: controller.orher.value ? primaryColor : primaryWhite,
                                    border: Border.all(color: controller.orher.value ? primaryColor : textFieldBorderColor),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
                                    child: Center(
                                      child: AppText1(
                                        text: "Other",
                                        size: 14.0,
                                        txtColor: blk,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),),
                            ),
                          ],
                        ),
                        Space.height(32),
                        AppText1(
                          text: "Reason for visit",
                          size: 12.0,
                          txtColor: greyTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                        Space.height(6),
                        AppTextField(
                          hintText: "Type Here",
                          maxLines: 3,
                          tcPadding: 16,
                          bcPadding: 16,
                        ),
                        Space.height(24),
                        AppText1(
                          text: "Diagnosis",
                          size: 12.0,
                          txtColor: greyTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                        Space.height(6),
                        AppTextField(
                          hintText: "Type Here",
                          maxLines: 3,
                          tcPadding: 16,
                          bcPadding: 16,
                        ),
                        Space.height(24),
                        AppText1(
                          text: "Signs and Symptoms",
                          size: 12.0,
                          txtColor: greyTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                        Space.height(6),
                        AppTextField(
                          hintText: "Type Here",
                          maxLines: 3,
                          tcPadding: 16,
                          bcPadding: 16,
                        ),
                        Space.height(48),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },);
  }
}