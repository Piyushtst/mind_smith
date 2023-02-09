import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/auth/verification_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/textfield.dart';

class AssessmentScreen extends StatefulWidget {
  const AssessmentScreen({Key? key}) : super(key: key);

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
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
                          child: Container(
                            alignment: Alignment.centerLeft,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: primaryWhite,
                              border: Border.all(color: textFieldBorderColor),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
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
                        const SizedBox(width: 8),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: primaryWhite,
                              border: Border.all(color: textFieldBorderColor),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
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
                        const SizedBox(width: 8),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: primaryWhite,
                              border: Border.all(color: textFieldBorderColor),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
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
}
