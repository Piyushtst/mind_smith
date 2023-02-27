import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/app_images.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/booking_process/add_photo_id.dart';
import 'package:mind_smith/screens/payment/confirm_apoinment_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/date_picker.dart';

Future BookNow(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
          child: Container(
            height: MySize.size327, //MySize.getScaledSizeHeight(335.00)//340
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Space.height(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(child: SizedBox()),
                      Center(
                        child: Image(
                          image: const AssetImage("assets/images/png/booknow.png"),
                          height: MySize.size80,
                          width: MySize.size80,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            alignment: Alignment.topRight,
                            child: Image(
                              image: const AssetImage("assets/images/png/roundcross.png"),
                              height: MySize.size20,
                              width: MySize.size20,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Space.height(24),
                  AppText1(
                    text: "Fill the details",
                    size: 16.0,
                    txtColor: blk,
                    fontWeight: FontWeight.w600,
                  ),
                  Space.height(14),
                  AppText1(
                    text: "As per govt. of India Mandate, we need following information before the first tele-consultation.",
                    size: 14.0,
                    txtColor: blk,
                    fontWeight: FontWeight.w400,
                    txtAlign: TextAlign.center,
                    maxLine: 3,
                  ),
                  Space.height(24),
                  AppButton(
                      btnText: "Fill details",
                      bttxtColor: primaryWhite,
                      bgColor: primaryColor,
                      onTap: () async{
                        //FirstConsultation(context);
                        Navigator.pop(context);
                        await Get.to(() =>  const AddPhotoID());//Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPhotoID()));
                      }),
                  Space.height(20),
                ],
              ),
            ),
          ),
        );
      });
}




Future FirstConsultation(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
          child: Container(
            height: MySize.size327, //MySize.getScaledSizeHeight(335.00)
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Space.height(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(child: SizedBox()),
                      Center(
                        child: Image(
                          image:  AssetImage(AppImage.firstConsultation),
                          height: MySize.size80,
                          width: MySize.size80,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            alignment: Alignment.topRight,
                            child: Image(
                              image:  AssetImage(AppImage.rounDcross),
                              height: MySize.size20,
                              width: MySize.size20,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Space.height(24),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPhotoID()));
                    },
                    child: AppText1(
                      text: "First consultation",
                      size: 16.0,
                      txtColor: blk,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Space.height(14),
                  FittedBox(
                    child: AppText1(
                      text: "This is your first consultation, hence it\n should be\nat least 45 min long",
                      size: 14.0,
                      txtColor: blk,
                      fontWeight: FontWeight.w400,
                      txtAlign: TextAlign.center,
                      maxLine: 3,
                    ),
                  ),
                  Space.height(24),
                  AppButton(
                      btnText: "Proceed",
                      bttxtColor: primaryWhite,
                      bgColor: primaryColor,
                      onTap: () async{
                        Navigator.pop(context);
                        await SelectDate(context);
                        // BookNow(context);
                      }),
                  Space.height(20),
                ],
              ),
            ),
          ),
        );
      });
}

Future SelectDate(BuildContext context) {
  var radioSelected = 1;
  late String radioValue;
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              insetPadding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
              //Expanded
              child: Container(
                height: MySize.size595,//582
                // width: double.maxFinite, //MySize.getScaledSizeHeight(335.00)
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Space.height(24),
                        AppText1(
                          text: "Select Date",
                          size: 16.0,
                          txtColor: blk,
                          fontWeight: FontWeight.w600,
                        ),
                        Space.height(28),
                        const PickDate(),
                        //Space.height(28),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio(
                              value: 1,
                              groupValue: radioSelected,
                              activeColor: greyColor,
                              onChanged: (value) {
                                setState(() {
                                  radioSelected = value!;
                                  radioValue = 'male';
                                });
                              },
                            ),
                            AppText1(
                              text: "Not-Available",
                              size: 14.0,
                              txtColor: blk,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        Space.height(16),
                        AppButton(
                            btnText: "Next",
                            bttxtColor: primaryWhite,
                            bgColor: primaryColor,
                            onTap: () async{
                              Navigator.pop(context);
                              await SlotBook(context);
                              //BookNow(context);
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPhotoID()));
                            }),
                        Space.height(20),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      });
}

String isGreen = "1";

Future SlotBook(BuildContext context) {
  var radioSelected = 1;
  late String radioVal;
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              insetPadding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00), vertical: MySize.getScaledSizeHeight(70.00)),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
              child: Container(
               height: MySize.size700,
                width: double.infinity, //MySize.getScaledSizeHeight(335.00)
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Space.height(24),
                      AppText1(
                        text: "Select time",
                        size: 16.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w600,
                      ),
                      Space.height(28),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  isGreen = "1";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: MySize.getScaledSizeWidth(12.00)),
                                // height: 300,
                                width: MySize.size150,
                                decoration: BoxDecoration(
                                  color: isGreen == "1" ? yelowShade : Colors.white,
                                  border: Border.all(color: textFieldBorderColor),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: MySize.getScaledSizeWidth(8.00),
                                  ),
                                  child: Center(
                                    child: AppText1(
                                      text: "15 Min",
                                      size: 16.0,
                                      txtColor: blk,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  isGreen = "2";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: MySize.getScaledSizeWidth(16.00), bottom: MySize.getScaledSizeWidth(12.00)),
                                // height: 300,
                                width: MySize.size150,
                                decoration: BoxDecoration(
                                  color: isGreen == "2" ? yelowShade : Colors.white,
                                  border: Border.all(color: textFieldBorderColor),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: MySize.getScaledSizeWidth(8.00),
                                  ),
                                  child: Center(
                                    child: AppText1(
                                      text: "30 Min",
                                      size: 16.0,
                                      txtColor: blk,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  isGreen = "3";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: MySize.getScaledSizeWidth(8.00)),
                                // height: 300,
                                width: MySize.size150,
                                decoration: BoxDecoration(
                                  color: isGreen == "3" ? yelowShade : Colors.white,
                                  border: Border.all(color: textFieldBorderColor),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: MySize.getScaledSizeWidth(8.00),
                                  ),
                                  child: Center(
                                    child: AppText1(
                                      text: "45 Min",
                                      size: 16.0,
                                      txtColor: blk,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  isGreen = "4";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: MySize.getScaledSizeWidth(16.00), bottom: MySize.getScaledSizeWidth(4.00)),
                                // height: 300,
                                width: MySize.size150,
                                decoration: BoxDecoration(
                                  color: isGreen == "4" ? yelowShade : Colors.white,
                                  border: Border.all(color: textFieldBorderColor),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: MySize.getScaledSizeWidth(8.00),
                                  ),
                                  child: Center(
                                    child: AppText1(
                                      text: "60 Min",
                                      size: 16.0,
                                      txtColor: blk,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Space.height(15),
                      const Divider(color: textFieldBorderColor, height: 0.5, thickness: 1),
                      Space.height(24),
                      AppText1(
                        text: "Available Slots",
                        size: 16.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w600,
                      ),
                      Space.height(24),
                      Expanded(
                        child: Container(
                          height: MySize.size500,//350
                          child:DayView(
                            controller: EventController(),
                            eventTileBuilder: (date, events, boundry, start, end) {
                              return Container();
                            },
                            fullDayEventBuilder: (events, date) {
                              return Container();
                            },
                            showVerticalLine: true,
                            showLiveTimeLineInAllDays: true,
                            //minDay: DateTime(1990),
                            //maxDay: DateTime(2050),
                            initialDay: DateTime(2023),
                            heightPerMinute: 0.7,
                            eventArranger: const SideEventArranger(),
                            onEventTap: (events, date) => print(events),
                            onDateLongPress: (date) => print(date),
                          ),
                        ),
                      ),
                      Space.height(24),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                            value: 1,
                            groupValue: radioSelected,
                            activeColor: greyColor,
                            onChanged: (value) {
                              setState(() {
                                radioSelected = value!;
                                radioVal = 'male';
                              });
                            },
                          ),
                          AppText1(
                            text: "Not-Available",
                            size: 14.0,
                            txtColor: blk,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      AppButton(
                          btnText: "Book Slot Now",
                          bttxtColor: primaryWhite,
                          bgColor: primaryColor,
                          onTap: () {
                            Get.to(() => const AppoinmentConfirmedScreen());
                            //BookNow(context);
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPhotoID()));
                          }),
                      Space.height(24),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      });
}