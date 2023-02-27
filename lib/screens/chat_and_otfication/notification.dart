import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/notification_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/chat_and_otfication/chat_screen.dart';
import 'package:mind_smith/widgets/app_text.dart';


class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<NotificationController>(
      init: NotificationController(),
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
                text: "Notification",
                size: 14.0,
                txtColor: blk,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Space.height(8),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.img2.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Space.height(16),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                          child: InkWell(
                            onTap: () {

                            },
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Image(
                                      image: const AssetImage(
                                        "assets/images/png/notification2.png",
                                      ),
                                      fit: BoxFit.fill,
                                      height: MySize.size52,
                                      width: MySize.size52,
                                    ),
                                    SizedBox(width: MySize.size18),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            AppText1(
                                              text: "News Update",
                                              size: 14.0,
                                              txtColor: blk,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: AppText1(
                                                text: "1d",
                                                size: 14.0,
                                                txtColor: greyColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Space.height(4),
                                        AppText1(
                                          text: "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. ",
                                          size: 14.0,
                                          txtColor: blk,
                                          fontWeight: FontWeight.w400,
                                          maxLine: 2,
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
                        const Divider(
                          height: 0.5,
                          color: greyShade,
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        );
      },);
  }

}