import 'dart:io';
import 'package:calendar_view/calendar_view.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/app_images.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/payment/confirm_apoinment_screen.dart';
import 'package:mind_smith/screens/payment/confirm_order_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/date_picker.dart';
import 'package:mind_smith/widgets/sheets_and_dilogs.dart';



class AddPhotoID extends StatefulWidget {
  const AddPhotoID({Key? key}) : super(key: key);

  @override
  State<AddPhotoID> createState() => _AddPhotoIDState();
}

class _AddPhotoIDState extends State<AddPhotoID> {
  bool isVisible = false;
  String dropdownvalue = 'dropdownvalue';
  List<String> items = ['Document 1', 'Document 3', 'Document 3', 'Document 4', 'Document 5',];
  FilePickerResult? result;
  File? uploadedFile;
  DateTime? selectedDate;

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
            text: "Add Photo ID",
            size: 14.0,
            txtColor: textBlack,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                      text: "Govt issued photo ID",
                      size: 16.0,
                      txtColor: blk,
                      fontWeight: FontWeight.w500,
                    ),
                    Space.height(24),
                     Container(
                      //height:MySize.size48 ,
                      decoration: BoxDecoration(
                        border: Border.all(color: textFieldBorderColor),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00), vertical: MySize.getScaledSizeWidth(0.00)),
                        child: DropdownButton(
                          borderRadius: BorderRadius.circular(10),
                          underline: Container(),
                           hint: AppText1(
                            text: "Select Document",
                            size: 14.0,
                            txtColor: blk,
                            fontWeight: FontWeight.w400,
                          ),
                          isExpanded: true,
                          //value:dropdownvalue ,
                          icon:  Icon(Icons.keyboard_arrow_down_outlined,size: MySize.size30),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),

                      ),
                    ),
                    Space.height(16),
                    InkWell(
                      onTap: () async{
                        result = await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowedExtensions: ['jpg', 'pdf', 'doc'],
                        );
                        List<File> files = result!.paths.map((path) => File(path!)).toList();
                        uploadedFile = files[0];
                        setState(() {});
                      },
                      child: Container(
                        //height:MySize.size48 ,
                        decoration: BoxDecoration(
                          border: Border.all(color: textFieldBorderColor),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00), vertical: MySize.getScaledSizeWidth(18.00)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText1(
                                text: "Choose Document",
                                size: 14.0,
                                txtColor: blk,
                                fontWeight: FontWeight.w400,
                              ), AppText1(
                                text: "Upload",
                                size: 14.0,
                                txtColor: greyTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),

                        ),
                      ),
                    ),
                    Space.height(6),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: AppText1(
                        text: "Upload PNG, JPEG or pdf. Max sze 5 mb.",
                        size: 12.0,
                        txtColor: greyShade,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
            child: AppButton(
                btnText: "Submit",
                bttxtColor: primaryWhite,
                bgColor: primaryColor,
                onTap: () async{
                  Navigator.pop(context);
                  await FirstConsultation(context);
                }),
          ),
          Space.height(24),
        ],
      ),
    );
  }

  /*Future FirstConsultation(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: MySize.size340, //MySize.getScaledSizeHeight(335.00)
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
                    Space.height(24),
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
                child: Expanded(
                  child: Container(
                    height: MySize.size582,
                    // width: double.maxFinite, //MySize.getScaledSizeHeight(335.00)
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
                          Space.height(24),
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
                child: Expanded(
                  child: Container(
                    //height: MySize.size550,
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
                              height: MySize.size350,
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
                ),
              );
            },
          );
        });
  }*/
}

