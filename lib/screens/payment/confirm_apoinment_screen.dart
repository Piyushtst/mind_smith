import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/appoinmentd_confirmed_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';

/*class AppoinmentConfirmedScreen extends StatefulWidget {
  const AppoinmentConfirmedScreen({Key? key}) : super(key: key);

  @override
  State<AppoinmentConfirmedScreen> createState() => _AppoinmentConfirmedScreenState();
}

class _AppoinmentConfirmedScreenState extends State<AppoinmentConfirmedScreen> {
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
                  child: Column(children: [
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
                      text: "Thank You!",
                      size: 24.0,
                      txtColor: blk,
                      fontWeight: FontWeight.w600,
                    ),
                    Space.height(8),
                    AppText1(
                      text: "Your appointment has been confirmed",
                      size: 12.0,
                      txtColor: greyColor3,
                      fontWeight: FontWeight.w400,
                    ),
                    Space.height(20),
                    Container(
                      // margin: EdgeInsets.only(top: MySize.getScaledSizeWidth(16.00), bottom: MySize.getScaledSizeWidth(8.00)),
                      // height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: textFieldBorderColor),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00), vertical: MySize.getScaledSizeHeight(16.00)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(
                              image: AssetImage("assets/images/png/apoinment.png"),
                              //height: MySize.size198,
                              // width: MySize.size280,
                              fit: BoxFit.fill,
                            ),
                            Space.height(8),
                            AppText1(
                              text: "John Doe Video Title",
                              size: 16.0,
                              txtColor: blk,
                              fontWeight: FontWeight.w500,
                            ),
                            Space.height(16),
                            Container(
                              // height: 300,
                              width: double.infinity,
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
                                      children: [
                                        SizedBox(width: MySize.size16),
                                        Column(
                                          children: [
                                            AppText1(
                                              text: "3",
                                              size: 20.0,
                                              txtColor: blk,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            Space.height(4),
                                            AppText1(
                                              text: "Jan",
                                              size: 12.0,
                                              txtColor: blk,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: MySize.size25),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            AppText1(
                                              text: "Appointment with",
                                              size: 10.0,
                                              txtColor: greyTextColor,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            Space.height(8),
                                            AppText1(
                                              text: "11:00 am",
                                              size: 14.0,
                                              txtColor: blk,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Space.height(16),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.pink.withOpacity(0.05),
                                // border: Border.all(color: yellowColor.withOpacity(0.25)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(8.00), vertical: MySize.getScaledSizeHeight(8.00)),
                                child: AppText1(
                                  text: "Please join in 10 min before the appointment.\nRescheduling fee will be \$2.",
                                  size: 12.0,
                                  txtColor: redColor,
                                  fontWeight: FontWeight.w400,
                                  txtAlign: TextAlign.center,
                                  maxLine: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Space.height(20),
                    AppButton(
                        btnText: "Check My Apoitnments",
                        bttxtColor: primaryWhite,
                        bgColor: primaryColor,
                        onTap: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPhotoID()));
                        }),
                  ]),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/




class AppoinmentConfirmedScreen extends GetWidget<ApoinmentConfirmedController> {
  const AppoinmentConfirmedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<ApoinmentConfirmedController>(
      init: ApoinmentConfirmedController(),
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: bgWhite,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(children: [
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
                          text: "Thank You!",
                          size: 24.0,
                          txtColor: blk,
                          fontWeight: FontWeight.w600,
                        ),
                        Space.height(8),
                        AppText1(
                          text: "Your appointment has been confirmed",
                          size: 12.0,
                          txtColor: greyColor3,
                          fontWeight: FontWeight.w400,
                        ),
                        Space.height(20),
                        Container(
                          // margin: EdgeInsets.only(top: MySize.getScaledSizeWidth(16.00), bottom: MySize.getScaledSizeWidth(8.00)),
                          // height: 300,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: textFieldBorderColor),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00), vertical: MySize.getScaledSizeHeight(16.00)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Image(
                                  image: AssetImage("assets/images/png/apoinment.png"),
                                  //height: MySize.size198,
                                  // width: MySize.size280,
                                  fit: BoxFit.fill,
                                ),
                                Space.height(8),
                                AppText1(
                                  text: "John Doe Video Title",
                                  size: 16.0,
                                  txtColor: blk,
                                  fontWeight: FontWeight.w500,
                                ),
                                Space.height(16),
                                Container(
                                  // height: 300,
                                  width: double.infinity,
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
                                          children: [
                                            SizedBox(width: MySize.size16),
                                            Column(
                                              children: [
                                                AppText1(
                                                  text: "3",
                                                  size: 20.0,
                                                  txtColor: blk,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                Space.height(4),
                                                AppText1(
                                                  text: "Jan",
                                                  size: 12.0,
                                                  txtColor: blk,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: MySize.size25),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                AppText1(
                                                  text: "Appointment with",
                                                  size: 10.0,
                                                  txtColor: greyTextColor,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                                Space.height(8),
                                                AppText1(
                                                  text: "11:00 am",
                                                  size: 14.0,
                                                  txtColor: blk,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Space.height(16),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.pink.withOpacity(0.05),
                                    // border: Border.all(color: yellowColor.withOpacity(0.25)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(8.00), vertical: MySize.getScaledSizeHeight(8.00)),
                                    child: AppText1(
                                      text: "Please join in 10 min before the appointment.\nRescheduling fee will be \$2.",
                                      size: 12.0,
                                      txtColor: redColor,
                                      fontWeight: FontWeight.w400,
                                      txtAlign: TextAlign.center,
                                      maxLine: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Space.height(20),
                        AppButton(
                            btnText: "Check My Apoitnments",
                            bttxtColor: primaryWhite,
                            bgColor: primaryColor,
                            onTap: () {
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPhotoID()));
                            }),
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
        );
      },);
  }
}