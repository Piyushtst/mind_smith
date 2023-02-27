import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/home_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/app_images.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/chat_and_otfication/chat_list_screen.dart';
import 'package:mind_smith/screens/chat_and_otfication/notification.dart';
import 'package:mind_smith/screens/home/book_consultant_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/search_textfield.dart';

/*class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List img3 = [
    AppImage.profile,
    AppImage.profile5,
    AppImage.profile4,
    AppImage.profile,
    AppImage.profile3,
  ];
  bool isCall = true;

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leadingWidth: MySize.size170,
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: MySize.getScaledSizeWidth(24.00)),
          child: Image(
            image:  AssetImage(AppImage.appBarImag),
            fit: BoxFit.contain,
            height: MySize.size24,
            width: MySize.size120,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: MySize.getScaledSizeWidth(24.00)),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => const ChatListScreen());//Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatListScreen()));
                  },
                  child: Image(
                    image:  AssetImage(AppImage.chat),
                    fit: BoxFit.contain,
                    height: MySize.size23,
                    width: MySize.size23,
                  ),
                ),
                SizedBox(width: MySize.size20),
                InkWell(
                  onTap: () {
                    Get.to(() => const NotificationScreen());//Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationScreen()));
                  },
                  child: Image(
                    image:  AssetImage(AppImage.notification),
                    fit: BoxFit.contain,
                    height: MySize.size23,
                    width: MySize.size23,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: MySize.getScaledSizeWidth(0.00)),
        //Expanded
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: MySize.getScaledSizeWidth(24.00), right: MySize.getScaledSizeWidth(24.00)),
              child: Column(
                children: [
                  Space.height(24),
                  const SearchTextField(),
                  Space.height(32),
                  isCall
                      ? Container(
                          //height: MySize.size280,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: textFieldBorderColor),
                            color: primaryColor.withOpacity(0.10),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: MySize.getScaledSizeWidth(24.00),
                            ),
                            child: Column(
                              children: [
                                Space.height(20),
                                AppText1(
                                  text: "Reach out to us for any issue ",
                                  size: 20.0,
                                  txtColor: textBlack,
                                  fontWeight: FontWeight.w600,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(120.00), vertical: MySize.getScaledSizeWidth(17.00)),
                                  child: const Divider(
                                    height: 1,
                                    color: primaryColor,
                                    thickness: 1,
                                  ),
                                ),
                                AppText1(
                                  text: "Lorem ipsum dolor sit amet consectetur. Odio at eget condimentum at amet \nfaucibus.",
                                  size: 14.0,
                                  txtColor: blk,
                                  fontWeight: FontWeight.w400,
                                  txtAlign: TextAlign.center,
                                  maxLine: 3,
                                ),
                                Space.height(20),
                                AppButton(
                                    height: MySize.size48,
                                    btnText: "Book Consultation",
                                    bttxtColor: primaryWhite,
                                    bgColor: primaryColor,
                                    onTap: () {
                                      setState(() {
                                        isCall = !isCall;
                                      });
                                    }),
                                Space.height(20),
                              ],
                            ),
                          ),
                        )
                      : Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: textFieldBorderColor),
                            color: primaryColor.withOpacity(0.10),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: MySize.getScaledSizeWidth(16.00),
                            ),
                            child: Column(
                              children: [
                                Space.height(20),
                                Row(children: [
                                  Image(
                                    image:  AssetImage(AppImage.profile6),
                                    fit: BoxFit.fill,
                                    height: MySize.size62,
                                    width: MySize.size62,
                                  ),
                                  SizedBox(width: MySize.size25),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AppText1(
                                        text: "John Doe",
                                        size: 16.0,
                                        txtColor: blk,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      Space.height(6),
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
                                    ],
                                  ),
                                ]),
                                Space.height(20),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: textFieldBorderColor),
                                    color: primaryWhite,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: MySize.getScaledSizeWidth(16.00),
                                      vertical: MySize.getScaledSizeWidth(16.00),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        AppText1(
                                          text: "Appointment at",
                                          size: 10.0,
                                          txtColor: greyColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        Space.height(8),
                                        AppText1(
                                          text: "Jan 3,2023 at 11:00 am",
                                          size: 14.0,
                                          txtColor: blk,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Space.height(20),
                                AppButton(
                                    height: MySize.size48,
                                    btnText: "Join Video Call",
                                    bttxtColor: primaryWhite,
                                    bgColor: primaryColor,
                                    onTap: () {
                                      setState(() {
                                        isCall = false;
                                      });
                                      Get.to(() => const BookConsultantion());//Navigator.push(context, MaterialPageRoute(builder: (context) => const BookConsultantion()));
                                    }),
                                Space.height(20),
                              ],
                            ),
                          ),
                        ),
                  Space.height(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText1(
                        text: "Top Doctors",
                        size: 16.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w500,
                      ),
                      AppText1(
                        text: "View all",
                        size: 14.0,
                        txtColor: blueColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Space.height(16),
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Padding(
                padding: EdgeInsets.only(left: MySize.getScaledSizeWidth(8.00)),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: img3.length,
                  itemBuilder: (context, index) {
                    return FittedBox(
                      child: Container(
                        margin: EdgeInsets.only(left: MySize.getScaledSizeWidth(16.00), bottom: MySize.getScaledSizeWidth(4.00)),
                        // height: 300,
                        //width: MySize.size180,
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
                                    image: AssetImage("${img3[index]}"),
                                    height: MySize.size60,
                                  ),
                                  Icon(
                                    Icons.favorite_border,
                                    color: textBlack,
                                    size: MySize.size30,
                                  ),
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
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}*/





class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            leadingWidth: MySize.size170,
            elevation: 0.5,
            backgroundColor: Colors.white,
            leading: Padding(
              padding: EdgeInsets.only(left: MySize.getScaledSizeWidth(24.00)),
              child: Image(
                image:  AssetImage(AppImage.appBarImag),
                fit: BoxFit.contain,
                height: MySize.size24,
                width: MySize.size120,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: MySize.getScaledSizeWidth(24.00)),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => const ChatListScreen());//Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatListScreen()));
                      },
                      child: Image(
                        image:  AssetImage(AppImage.chat),
                        fit: BoxFit.contain,
                        height: MySize.size23,
                        width: MySize.size23,
                      ),
                    ),
                    SizedBox(width: MySize.size20),
                    InkWell(
                      onTap: () {
                        Get.to(() => const NotificationScreen());//Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationScreen()));
                      },
                      child: Image(
                        image:  AssetImage(AppImage.notification),
                        fit: BoxFit.contain,
                        height: MySize.size23,
                        width: MySize.size23,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          body: Padding(
            padding: EdgeInsets.only(left: MySize.getScaledSizeWidth(0.00)),
            //Expanded
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: MySize.getScaledSizeWidth(24.00), right: MySize.getScaledSizeWidth(24.00)),
                  child: Column(
                    children: [
                      Space.height(24),
                      const SearchTextField(),
                      Space.height(32),
                      Obx(() => controller.isCall.value
                          ? Container(
                        //height: MySize.size280,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: textFieldBorderColor),
                          color: primaryColor.withOpacity(0.10),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MySize.getScaledSizeWidth(24.00),
                          ),
                          child: Column(
                            children: [
                              Space.height(20),
                              AppText1(
                                text: "Reach out to us for any issue ",
                                size: 20.0,
                                txtColor: textBlack,
                                fontWeight: FontWeight.w600,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(120.00), vertical: MySize.getScaledSizeWidth(17.00)),
                                child: const Divider(
                                  height: 1,
                                  color: primaryColor,
                                  thickness: 1,
                                ),
                              ),
                              AppText1(
                                text: "Lorem ipsum dolor sit amet consectetur. Odio at eget condimentum at amet \nfaucibus.",
                                size: 14.0,
                                txtColor: blk,
                                fontWeight: FontWeight.w400,
                                txtAlign: TextAlign.center,
                                maxLine: 3,
                              ),
                              Space.height(20),
                              AppButton(
                                  height: MySize.size48,
                                  btnText: "Book Consultation",
                                  bttxtColor: primaryWhite,
                                  bgColor: primaryColor,
                                  onTap: () {
                                    controller.isCall.value = !controller.isCall.value;
                                    //setState(() {});
                                  }),
                              Space.height(20),
                            ],
                          ),
                        ),
                      )
                          : Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: textFieldBorderColor),
                          color: primaryColor.withOpacity(0.10),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MySize.getScaledSizeWidth(16.00),
                          ),
                          child: Column(
                            children: [
                              Space.height(20),
                              Row(children: [
                                Image(
                                  image:  AssetImage(AppImage.profile6),
                                  fit: BoxFit.fill,
                                  height: MySize.size62,
                                  width: MySize.size62,
                                ),
                                SizedBox(width: MySize.size25),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText1(
                                      text: "John Doe",
                                      size: 16.0,
                                      txtColor: blk,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    Space.height(6),
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
                                  ],
                                ),
                              ]),
                              Space.height(20),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: textFieldBorderColor),
                                  color: primaryWhite,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: MySize.getScaledSizeWidth(16.00),
                                    vertical: MySize.getScaledSizeWidth(16.00),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AppText1(
                                        text: "Appointment at",
                                        size: 10.0,
                                        txtColor: greyColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Space.height(8),
                                      AppText1(
                                        text: "Jan 3,2023 at 11:00 am",
                                        size: 14.0,
                                        txtColor: blk,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Space.height(20),
                              AppButton(
                                  height: MySize.size48,
                                  btnText: "Join Video Call",
                                  bttxtColor: primaryWhite,
                                  bgColor: primaryColor,
                                  onTap: () {
                                    controller.isCall.value = false;
                                    //setState(() {});
                                    Get.to(() => const BookConsultantion());//Navigator.push(context, MaterialPageRoute(builder: (context) => const BookConsultantion()));
                                  }),
                              Space.height(20),
                            ],
                          ),
                        ),
                      ),),
                      Space.height(40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText1(
                            text: "Top Doctors",
                            size: 16.0,
                            txtColor: blk,
                            fontWeight: FontWeight.w500,
                          ),
                          AppText1(
                            text: "View all",
                            size: 14.0,
                            txtColor: blueColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Space.height(16),
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: EdgeInsets.only(left: MySize.getScaledSizeWidth(8.00)),
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.img3.length,
                      itemBuilder: (context, index) {
                        return FittedBox(
                          child: Container(
                            margin: EdgeInsets.only(left: MySize.getScaledSizeWidth(16.00), bottom: MySize.getScaledSizeWidth(4.00)),
                            // height: 300,
                            //width: MySize.size180,
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
                                        image: AssetImage("${controller.img3[index]}"),
                                        height: MySize.size60,
                                      ),
                                      Icon(
                                        Icons.favorite_border,
                                        color: textBlack,
                                        size: MySize.size30,
                                      ),
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
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },);
  }
}
