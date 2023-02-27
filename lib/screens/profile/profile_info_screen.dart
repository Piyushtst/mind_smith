import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/profile_info_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/booking_process/add_photo_id.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/sheets_and_dilogs.dart';



/*class ProfileInfoScreen extends StatefulWidget {
  const ProfileInfoScreen({Key? key}) : super(key: key);

  @override
  State<ProfileInfoScreen> createState() => _ProfileInfoScreenState();
}

class _ProfileInfoScreenState extends State<ProfileInfoScreen> {
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
            text: "Profile Info",
            size: 14.0,
            txtColor: textBlack,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Space.height(32),
                  IntrinsicHeight(
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image(
                            image: const AssetImage("assets/images/png/profileinfo.png"),
                            height: MySize.size100,
                            width: MySize.size120,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: MySize.size20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText1(
                              text: "Dr. John Doe MD",
                              size: 16.0,
                              txtColor: blk,
                              fontWeight: FontWeight.w500,
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
                            Space.height(10),
                            Row(
                              children: [
                                Image(
                                  image: const AssetImage("assets/images/png/star.png"),
                                  width: MySize.size14,
                                  height: MySize.size14,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(width: 4),
                                AppText1(
                                  text: "4.64",
                                  size: 14.0,
                                  txtColor: greyColor3,
                                  fontWeight: FontWeight.w500,
                                ),
                                const SizedBox(width: 4),
                                AppText1(
                                  text: "(127)",
                                  size: 14.0,
                                  txtColor: greyColor3,
                                  fontWeight: FontWeight.w500,
                                ),
                                Space.height(16),
                              ],
                            ),
                            Space.height(14),
                            Container(
                              decoration: BoxDecoration(
                                color: ligntPink.withOpacity(0.10),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20.00), vertical: MySize.getScaledSizeHeight(6.00)),
                                child: AppText1(
                                  text: "\$5 / 15 min",
                                  size: 14.0,
                                  txtColor: textBlack,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Space.height(32),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          // height: 44,
                          //width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: textFieldBorderColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(18.00), vertical: MySize.getScaledSizeHeight(10.00)),
                            child: Row(
                              children: [
                                Image(
                                  image: const AssetImage("assets/images/png/twoperson.png"),
                                  height: MySize.size24,
                                  width: MySize.size24,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText1(
                                      text: "200+",
                                      size: 14.0,
                                      txtColor: blk,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: MySize.getScaledSizeHeight(4.00)),
                                      child: AppText1(
                                        text: "Patients",
                                        size: 12.0,
                                        txtColor: blkShade,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Container(
                          // height: 44,
                          //width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: textFieldBorderColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(18.00), vertical: MySize.getScaledSizeHeight(10.00)),
                            child: Row(
                              children: [
                                Image(
                                  image: const AssetImage("assets/images/png/torch.png"),
                                  height: MySize.size24,
                                  width: MySize.size24,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText1(
                                      text: "7+ Year",
                                      size: 14.0,
                                      txtColor: blk,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: MySize.getScaledSizeHeight(4.00)),
                                      child: AppText1(
                                        text: "Experience",
                                        size: 12.0,
                                        txtColor: blkShade,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Space.height(32),
                  AppText1(
                    text: "Previous Calls - 2",
                    size: 16.0,
                    txtColor: blk,
                    fontWeight: FontWeight.w500,
                  ),
                  Space.height(8),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: lightGrey,
                      border: Border.all(color: textFieldBorderColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00), horizontal: MySize.getScaledSizeHeight(14.00)),
                      child: AppText1(
                        text: "21 may,2022   •    10:25",
                        size: 14.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Space.height(8),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: lightGrey,
                      border: Border.all(color: textFieldBorderColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00), horizontal: MySize.getScaledSizeHeight(14.00)),
                      child: AppText1(
                        text: "12 may,2022   •    10:25",
                        size: 14.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Space.height(32),
                  AppText1(
                    text: "Know more about me",
                    size: 16.0,
                    txtColor: blk,
                    fontWeight: FontWeight.w500,
                  ),
                  Space.height(8),
                  AppText1(
                    text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nunc bibendum pretium sit orci eget malesuada malesuada ornare. Tincidunt placerat vitae aenean tellus tristique aliquam. Faucibus tempor elit a, tincidunt venenatis eu vel sit.",
                    size: 14.0,
                    txtColor: textBlack,
                    fontWeight: FontWeight.w400,
                    maxLine: 7,
                    txtAlign: TextAlign.start,
                    textOverflow: TextOverflow.ellipsis,
                  ),
                  Space.height(8),
                  AppText1(
                    text: "English • Kanadda • Tamil • Hindi ",
                    size: 14.0,
                    txtColor: textBlack,
                    fontWeight: FontWeight.w400,
                  ),
                  Space.height(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText1(
                        text: "Age",
                        size: 14.0,
                        txtColor: textBlack,
                        fontWeight: FontWeight.w400,
                      ),
                      AppText1(
                        text: "32 Years",
                        size: 14.0,
                        txtColor: textBlack,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  Space.height(32),
                  AppText1(
                    text: "Earliest Available slot",
                    size: 16.0,
                    txtColor: textBlack,
                    fontWeight: FontWeight.w500,
                  ),
                  Space.height(8),
                  Container(
                    alignment: Alignment.centerLeft,
                    //height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: greenShade.withOpacity(0.10),
                      border: Border.all(color: textFieldBorderColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(12.00), horizontal: MySize.getScaledSizeHeight(16.00)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText1(
                            text: "Mon - Fri",
                            size: 14.0,
                            txtColor: greyColor3,
                            fontWeight: FontWeight.w500,
                          ),
                          AppText1(
                            text: "9am - 9pm",
                            size: 14.0,
                            txtColor: blk,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Space.height(8),
                  Container(
                    alignment: Alignment.centerLeft,
                    //height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: greenShade.withOpacity(0.10),
                      border: Border.all(color: textFieldBorderColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(12.00), horizontal: MySize.getScaledSizeHeight(16.00)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText1(
                            text: "Saturday",
                            size: 14.0,
                            txtColor: greyColor3,
                            fontWeight: FontWeight.w500,
                          ),
                          AppText1(
                            text: "9am - 2pm",
                            size: 14.0,
                            txtColor: blk,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Space.height(32),
                  InkWell(
                    onTap: () {
                      //SelectDate(context);
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      //height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
                        child: Center(
                          child: AppText1(
                            text: "Check calendar availability ",
                            size: 16.0,
                            txtColor: primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Space.height(32),
                  AppText1(
                    text: "Certification",
                    size: 16.0,
                    txtColor: textBlack,
                    fontWeight: FontWeight.w500,
                  ),
                  Space.height(8),
                  Column(
                    children: [
                      Image(
                        image: const AssetImage("assets/images/png/certicifats.png"),
                        height: MySize.size250,
                        width: MySize.screenWidth,
                        fit: BoxFit.fill,
                      ),
                      Container(
                        //height: 50,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: lightGrey,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00), horizontal: MySize.getScaledSizeHeight(16.00)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText1(
                                text: "Registration number",
                                size: 14.0,
                                txtColor: blk,
                                fontWeight: FontWeight.w400,
                              ),
                              AppText1(
                                text: "9876543210",
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
                  Space.height(32),
                  AppText1(
                    text: "Awards",
                    size: 16.0,
                    txtColor: textBlack,
                    fontWeight: FontWeight.w500,
                  ),
                  Space.height(8),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.pink.withOpacity(0.05),
                      border: Border.all(color: yellowColor.withOpacity(0.25)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00), horizontal: MySize.getScaledSizeHeight(16.00)),
                      child: Row(
                        children: [
                          Image(
                            image: const AssetImage("assets/images/png/brain.png"),
                            height: MySize.size52,
                            width: MySize.size52,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(width: MySize.size16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText1(
                                text: "Scientific Research",
                                size: 14.0,
                                txtColor: textBlack,
                                fontWeight: FontWeight.w500,
                              ),
                              Space.height(8),
                              AppText1(
                                text: "21 may,2022",
                                size: 12.0,
                                txtColor: greyTextColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Space.height(8),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.pink.withOpacity(0.05),
                      border: Border.all(color: yellowColor.withOpacity(0.25)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00), horizontal: MySize.getScaledSizeHeight(16.00)),
                      child: Row(
                        children: [
                          Image(
                            image: const AssetImage("assets/images/png/brain.png"),
                            height: MySize.size52,
                            width: MySize.size52,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(width: MySize.size16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText1(
                                text: "Scientific Research",
                                size: 14.0,
                                txtColor: textBlack,
                                fontWeight: FontWeight.w500,
                              ),
                              Space.height(8),
                              AppText1(
                                text: "21 may,2022",
                                size: 12.0,
                                txtColor: greyTextColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Space.height(32),
                  AppText1(
                    text: "Users view about me",
                    size: 16.0,
                    txtColor: textBlack,
                    fontWeight: FontWeight.w500,
                  ),
                  Space.height(20),
                  AppText1(
                    text: "4.7",
                    size: 52.0,
                    txtColor: textBlack,
                    fontWeight: FontWeight.w500,
                  ),
                  Space.height(10),
                  Row(
                    children: [
                      Image(
                        image: const AssetImage("assets/images/png/star.png"),
                        height: MySize.size24,
                        width: MySize.size24,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Image(
                        image: const AssetImage("assets/images/png/star.png"),
                        height: MySize.size24,
                        width: MySize.size24,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Image(
                        image: const AssetImage("assets/images/png/star.png"),
                        height: MySize.size24,
                        width: MySize.size24,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Image(
                        image: const AssetImage("assets/images/png/star.png"),
                        height: MySize.size24,
                        width: MySize.size24,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Image(
                        image: const AssetImage("assets/images/png/hafstar.png"),
                        height: MySize.size24,
                        width: MySize.size24,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                  Space.height(20),
                  const Divider(
                    height: 1,
                    color: textFieldBorderColor,
                    thickness: 1,
                  ),
                  Space.height(16),
                  AppText1(
                    text: "27 reviews",
                    size: 16.0,
                    txtColor: textBlack,
                    fontWeight: FontWeight.w500,
                  ),
                  Space.height(18),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: const AssetImage("assets/images/png/person2.png"),
                                    height: MySize.size38,
                                    width: MySize.size38,
                                    fit: BoxFit.fill,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  AppText1(
                                    text: "User name",
                                    size: 16.0,
                                    txtColor: textBlack,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              AppText1(
                                text: "23 May, 2021",
                                size: 12.0,
                                txtColor: greyShade2,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Space.height(12),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: lightGrey,
                              // border: Border.all(color: primaryColor),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(12.00), horizontal: MySize.getScaledSizeWidth(16.00)),
                              child: Row(
                                children: [
                                  AppText1(
                                    text: "Ratings",
                                    size: 14.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  SizedBox(width: MySize.size5),
                                  Image(
                                    image: const AssetImage("assets/images/png/star.png"),
                                    height: MySize.size18,
                                    width: MySize.size18,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(width: MySize.size5),
                                  AppText1(
                                    text: "4.7",
                                    size: 14.0,
                                    txtColor: greyColor3,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Space.height(12),
                          AppText1(
                            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nunc bibendum pretium sit orci eget ",
                            size: 14.0,
                            txtColor: blk,
                            fontWeight: FontWeight.w400,
                            maxLine: 3,
                          ),
                          Space.height(16),
                          if (index == 0 || index == 1)
                            const Divider(
                              height: 1,
                              color: textFieldBorderColor,
                              thickness: 1,
                            ),
                          if (index == 0 || index == 1) Space.height(20),
                        ],
                      );
                    },
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: primaryColor),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
                      child: Center(
                        child: AppText1(
                          text: "See all 27 reviews",
                          size: 16.0,
                          txtColor: primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Space.height(20),
                  AppText1(
                    text: "Related Profiles",
                    size: 16.0,
                    txtColor: textBlack,
                    fontWeight: FontWeight.w500,
                  ),
                  Space.height(30),

                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: MySize.size290,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Expanded(
                        child: Container(

                          margin: index == 0 ? EdgeInsets.only(left: MySize.getScaledSizeWidth(24.00), right: MySize.getScaledSizeWidth(16.00), bottom: MySize.getScaledSizeWidth(4.00)) : EdgeInsets
                              .only(right: MySize.getScaledSizeWidth(16.00), bottom: MySize.getScaledSizeWidth(4.00)),
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
                                      image: const AssetImage("assets/images/png/profil.png"),
                                      height: MySize.size60,
                                    ),
                                    Icon(
                                      Icons.favorite_border,
                                      color: textBlack,
                                      size: MySize.size30,
                                    )
                                  ],
                                ),
                                Space.height(16),
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
                                  text: "MBBS\nDNB - Neurosurgery",
                                  size: 12.0,
                                  txtColor: blk,
                                  fontWeight: FontWeight.w400,
                                ),
                                Space.height(16),
                                Row(
                                  children: [
                                    Image(
                                      image: const AssetImage("assets/images/png/star.png"),
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
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Space.height(30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                  child: AppButton(
                      btnText: "Book Appointment",
                      bttxtColor: primaryWhite,
                      bgColor: primaryColor,
                      onTap: () {
                        //SlotBook(context);
                        BookNow(context);
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => const EnterOtp()));
                      }),
                ),
                Space.height(24),
              ],
            ),
          ],
        ),
      ),
    );
  }


  String isGreen = "0";

  Future SlotBook(BuildContext context) {
    var radioSelected = 1;
    late String radioVal;
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Dialog(
                insetPadding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00), vertical: MySize.getScaledSizeHeight(24.00)),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
                child: Expanded(
                  child: Container(
                    height: double.infinity,
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
                                heightPerMinute: 1,
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

  Future BookNow(BuildContext context) {
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
                    InkWell(
                      onTap: () {

                      },
                      child: AppText1(
                        text: "Fill the details",
                        size: 16.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w600,
                      ),
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
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPhotoID()));
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
                              onTap: () {
                                SlotBook(context);
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
}*/





class ProfileInfoScreen extends GetWidget<ProfileInfoController> {
  const ProfileInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<ProfileInfoController>(
      init: ProfileInfoController(),
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
                text: "Profile Info",
                size: 14.0,
                txtColor: textBlack,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Space.height(32),
                      IntrinsicHeight(
                        child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Image(
                                image: const AssetImage("assets/images/png/profileinfo.png"),
                                height: MySize.size100,
                                width: MySize.size120,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(width: MySize.size20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText1(
                                  text: "Dr. John Doe MD",
                                  size: 16.0,
                                  txtColor: blk,
                                  fontWeight: FontWeight.w500,
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
                                Space.height(10),
                                Row(
                                  children: [
                                    Image(
                                      image: const AssetImage("assets/images/png/star.png"),
                                      width: MySize.size14,
                                      height: MySize.size14,
                                      fit: BoxFit.fill,
                                    ),
                                    const SizedBox(width: 4),
                                    AppText1(
                                      text: "4.64",
                                      size: 14.0,
                                      txtColor: greyColor3,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    const SizedBox(width: 4),
                                    AppText1(
                                      text: "(127)",
                                      size: 14.0,
                                      txtColor: greyColor3,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    Space.height(16),
                                  ],
                                ),
                                Space.height(14),
                                Container(
                                  decoration: BoxDecoration(
                                    color: ligntPink.withOpacity(0.10),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20.00), vertical: MySize.getScaledSizeHeight(6.00)),
                                    child: AppText1(
                                      text: "\$5 / 15 min",
                                      size: 14.0,
                                      txtColor: textBlack,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Space.height(32),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              // height: 44,
                              //width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: textFieldBorderColor),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(18.00), vertical: MySize.getScaledSizeHeight(10.00)),
                                child: Row(
                                  children: [
                                    Image(
                                      image: const AssetImage("assets/images/png/twoperson.png"),
                                      height: MySize.size24,
                                      width: MySize.size24,
                                      fit: BoxFit.fill,
                                    ),
                                    const SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        AppText1(
                                          text: "200+",
                                          size: 14.0,
                                          txtColor: blk,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: MySize.getScaledSizeHeight(4.00)),
                                          child: AppText1(
                                            text: "Patients",
                                            size: 12.0,
                                            txtColor: blkShade,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              // height: 44,
                              //width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: textFieldBorderColor),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(18.00), vertical: MySize.getScaledSizeHeight(10.00)),
                                child: Row(
                                  children: [
                                    Image(
                                      image: const AssetImage("assets/images/png/torch.png"),
                                      height: MySize.size24,
                                      width: MySize.size24,
                                      fit: BoxFit.fill,
                                    ),
                                    const SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        AppText1(
                                          text: "7+ Year",
                                          size: 14.0,
                                          txtColor: blk,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: MySize.getScaledSizeHeight(4.00)),
                                          child: AppText1(
                                            text: "Experience",
                                            size: 12.0,
                                            txtColor: blkShade,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Space.height(32),
                      AppText1(
                        text: "Previous Calls - 2",
                        size: 16.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w500,
                      ),
                      Space.height(8),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: lightGrey,
                          border: Border.all(color: textFieldBorderColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00), horizontal: MySize.getScaledSizeHeight(14.00)),
                          child: AppText1(
                            text: "21 may,2022   •    10:25",
                            size: 14.0,
                            txtColor: blk,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Space.height(8),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: lightGrey,
                          border: Border.all(color: textFieldBorderColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00), horizontal: MySize.getScaledSizeHeight(14.00)),
                          child: AppText1(
                            text: "12 may,2022   •    10:25",
                            size: 14.0,
                            txtColor: blk,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Space.height(32),
                      AppText1(
                        text: "Know more about me",
                        size: 16.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w500,
                      ),
                      Space.height(8),
                      AppText1(
                        text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nunc bibendum pretium sit orci eget malesuada malesuada ornare. Tincidunt placerat vitae aenean tellus tristique aliquam. Faucibus tempor elit a, tincidunt venenatis eu vel sit.",
                        size: 14.0,
                        txtColor: textBlack,
                        fontWeight: FontWeight.w400,
                        maxLine: 7,
                        txtAlign: TextAlign.start,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                      Space.height(8),
                      AppText1(
                        text: "English • Kanadda • Tamil • Hindi ",
                        size: 14.0,
                        txtColor: textBlack,
                        fontWeight: FontWeight.w400,
                      ),
                      Space.height(8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText1(
                            text: "Age",
                            size: 14.0,
                            txtColor: textBlack,
                            fontWeight: FontWeight.w400,
                          ),
                          AppText1(
                            text: "32 Years",
                            size: 14.0,
                            txtColor: textBlack,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      Space.height(32),
                      AppText1(
                        text: "Earliest Available slot",
                        size: 16.0,
                        txtColor: textBlack,
                        fontWeight: FontWeight.w500,
                      ),
                      Space.height(8),
                      Container(
                        alignment: Alignment.centerLeft,
                        //height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: greenShade.withOpacity(0.10),
                          border: Border.all(color: textFieldBorderColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(12.00), horizontal: MySize.getScaledSizeHeight(16.00)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText1(
                                text: "Mon - Fri",
                                size: 14.0,
                                txtColor: greyColor3,
                                fontWeight: FontWeight.w500,
                              ),
                              AppText1(
                                text: "9am - 9pm",
                                size: 14.0,
                                txtColor: blk,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Space.height(8),
                      Container(
                        alignment: Alignment.centerLeft,
                        //height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: greenShade.withOpacity(0.10),
                          border: Border.all(color: textFieldBorderColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(12.00), horizontal: MySize.getScaledSizeHeight(16.00)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText1(
                                text: "Saturday",
                                size: 14.0,
                                txtColor: greyColor3,
                                fontWeight: FontWeight.w500,
                              ),
                              AppText1(
                                text: "9am - 2pm",
                                size: 14.0,
                                txtColor: blk,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Space.height(32),
                      InkWell(
                        onTap: () {
                          //SelectDate(context);
                        },
                        child: Container(
                          alignment: Alignment.centerLeft,
                          //height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
                            child: Center(
                              child: AppText1(
                                text: "Check calendar availability ",
                                size: 16.0,
                                txtColor: primaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Space.height(32),
                      AppText1(
                        text: "Certification",
                        size: 16.0,
                        txtColor: textBlack,
                        fontWeight: FontWeight.w500,
                      ),
                      Space.height(8),
                      Column(
                        children: [
                          Image(
                            image: const AssetImage("assets/images/png/certicifats.png"),
                            height: MySize.size250,
                            width: MySize.screenWidth,
                            fit: BoxFit.fill,
                          ),
                          Container(
                            //height: 50,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: lightGrey,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00), horizontal: MySize.getScaledSizeHeight(16.00)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText1(
                                    text: "Registration number",
                                    size: 14.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  AppText1(
                                    text: "9876543210",
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
                      Space.height(32),
                      AppText1(
                        text: "Awards",
                        size: 16.0,
                        txtColor: textBlack,
                        fontWeight: FontWeight.w500,
                      ),
                      Space.height(8),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.pink.withOpacity(0.05),
                          border: Border.all(color: yellowColor.withOpacity(0.25)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00), horizontal: MySize.getScaledSizeHeight(16.00)),
                          child: Row(
                            children: [
                              Image(
                                image: const AssetImage("assets/images/png/brain.png"),
                                height: MySize.size52,
                                width: MySize.size52,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(width: MySize.size16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText1(
                                    text: "Scientific Research",
                                    size: 14.0,
                                    txtColor: textBlack,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Space.height(8),
                                  AppText1(
                                    text: "21 may,2022",
                                    size: 12.0,
                                    txtColor: greyTextColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Space.height(8),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.pink.withOpacity(0.05),
                          border: Border.all(color: yellowColor.withOpacity(0.25)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00), horizontal: MySize.getScaledSizeHeight(16.00)),
                          child: Row(
                            children: [
                              Image(
                                image: const AssetImage("assets/images/png/brain.png"),
                                height: MySize.size52,
                                width: MySize.size52,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(width: MySize.size16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText1(
                                    text: "Scientific Research",
                                    size: 14.0,
                                    txtColor: textBlack,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Space.height(8),
                                  AppText1(
                                    text: "21 may,2022",
                                    size: 12.0,
                                    txtColor: greyTextColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Space.height(32),
                      AppText1(
                        text: "Users view about me",
                        size: 16.0,
                        txtColor: textBlack,
                        fontWeight: FontWeight.w500,
                      ),
                      Space.height(20),
                      AppText1(
                        text: "4.7",
                        size: 52.0,
                        txtColor: textBlack,
                        fontWeight: FontWeight.w500,
                      ),
                      Space.height(10),
                      Row(
                        children: [
                          Image(
                            image: const AssetImage("assets/images/png/star.png"),
                            height: MySize.size24,
                            width: MySize.size24,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Image(
                            image: const AssetImage("assets/images/png/star.png"),
                            height: MySize.size24,
                            width: MySize.size24,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Image(
                            image: const AssetImage("assets/images/png/star.png"),
                            height: MySize.size24,
                            width: MySize.size24,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Image(
                            image: const AssetImage("assets/images/png/star.png"),
                            height: MySize.size24,
                            width: MySize.size24,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Image(
                            image: const AssetImage("assets/images/png/hafstar.png"),
                            height: MySize.size24,
                            width: MySize.size24,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                      Space.height(20),
                      const Divider(
                        height: 1,
                        color: textFieldBorderColor,
                        thickness: 1,
                      ),
                      Space.height(16),
                      AppText1(
                        text: "27 reviews",
                        size: 16.0,
                        txtColor: textBlack,
                        fontWeight: FontWeight.w500,
                      ),
                      Space.height(18),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(
                                        image: const AssetImage("assets/images/png/person2.png"),
                                        height: MySize.size38,
                                        width: MySize.size38,
                                        fit: BoxFit.fill,
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      AppText1(
                                        text: "User name",
                                        size: 16.0,
                                        txtColor: textBlack,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                  AppText1(
                                    text: "23 May, 2021",
                                    size: 12.0,
                                    txtColor: greyShade2,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                              Space.height(12),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: lightGrey,
                                  // border: Border.all(color: primaryColor),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(12.00), horizontal: MySize.getScaledSizeWidth(16.00)),
                                  child: Row(
                                    children: [
                                      AppText1(
                                        text: "Ratings",
                                        size: 14.0,
                                        txtColor: blk,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      SizedBox(width: MySize.size5),
                                      Image(
                                        image: const AssetImage("assets/images/png/star.png"),
                                        height: MySize.size18,
                                        width: MySize.size18,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(width: MySize.size5),
                                      AppText1(
                                        text: "4.7",
                                        size: 14.0,
                                        txtColor: greyColor3,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Space.height(12),
                              AppText1(
                                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nunc bibendum pretium sit orci eget ",
                                size: 14.0,
                                txtColor: blk,
                                fontWeight: FontWeight.w400,
                                maxLine: 3,
                              ),
                              Space.height(16),
                              if (index == 0 || index == 1)
                                const Divider(
                                  height: 1,
                                  color: textFieldBorderColor,
                                  thickness: 1,
                                ),
                              if (index == 0 || index == 1) Space.height(20),
                            ],
                          );
                        },
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
                          child: Center(
                            child: AppText1(
                              text: "See all 27 reviews",
                              size: 16.0,
                              txtColor: primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Space.height(20),
                      AppText1(
                        text: "Related Profiles",
                        size: 16.0,
                        txtColor: textBlack,
                        fontWeight: FontWeight.w500,
                      ),
                      Space.height(30),

                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: MySize.size290,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          //Expanded
                          return Container(
                            margin: index == 0 ? EdgeInsets.only(left: MySize.getScaledSizeWidth(24.00), right: MySize.getScaledSizeWidth(16.00), bottom: MySize.getScaledSizeWidth(4.00)) : EdgeInsets
                                .only(right: MySize.getScaledSizeWidth(16.00), bottom: MySize.getScaledSizeWidth(4.00)),
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
                                        image: const AssetImage("assets/images/png/profil.png"),
                                        height: MySize.size60,
                                      ),
                                      Icon(
                                        Icons.favorite_border,
                                        color: textBlack,
                                        size: MySize.size30,
                                      )
                                    ],
                                  ),
                                  Space.height(16),
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
                                    text: "MBBS\nDNB - Neurosurgery",
                                    size: 12.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  Space.height(16),
                                  Row(
                                    children: [
                                      Image(
                                        image: const AssetImage("assets/images/png/star.png"),
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
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Space.height(30),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                      child: AppButton(
                          btnText: "Book Appointment",
                          bttxtColor: primaryWhite,
                          bgColor: primaryColor,
                          onTap: () {
                            //SlotBook(context);
                            BookNow(context);
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => const EnterOtp()));
                          }),
                    ),
                    Space.height(24),
                  ],
                ),
              ],
            ),
          ),
        );
      },);
  }

  /*Future BookNow(BuildContext context) {
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
                    InkWell(
                      onTap: () {

                      },
                      child: AppText1(
                        text: "Fill the details",
                        size: 16.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w600,
                      ),
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
                          await Get.to(() =>  AddPhotoID());//Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPhotoID()));
                        }),
                    Space.height(24),
                  ],
                ),
              ),
            ),
          );
        });
  }*/
}