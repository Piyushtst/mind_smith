import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/chat_list_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/chat_and_otfication/chat_screen.dart';
import 'package:mind_smith/widgets/app_text.dart';

/*class ChatListScreen extends StatefulWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  List img2 = [
    "assets/images/png/profile1.png",
    "assets/images/png/profile3.png",
    "assets/images/png/profile4.png",
    "assets/images/png/profil.png",
    "assets/images/png/profile3.png",
    "assets/images/png/profile1.png",
    "assets/images/png/profile3.png",
    "assets/images/png/profile4.png",
    "assets/images/png/profil.png",
    "assets/images/png/profile3.png",
  ];

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
            text: "Chats",
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
              itemCount: img2.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Space.height(16),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ConversationPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image(
                                  image: AssetImage("${img2[index]}"),
                                  fit: BoxFit.fill,
                                  height: MySize.size52,
                                  width: MySize.size52,
                                ),
                                SizedBox(width: MySize.size18),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    AppText1(
                                      text: "John Doe name • 5Y",
                                      size: 14.0,
                                      txtColor: blk,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    Space.height(4),
                                    index == 0
                                        ? AppText1(
                                            text: "Typing...",
                                            size: 12.0,
                                            txtColor: greyColor3,
                                            fontWeight: FontWeight.w400,
                                          )
                                        : AppText1(
                                            text: "Lorem ipsum dolor sit",
                                            size: 12.0,
                                            txtColor: greyColor3,
                                            fontWeight: FontWeight.w400,
                                          ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AppText1(
                                  text: index == 0 || index == 1 ? "11:12" : "09:10",
                                  size: 12.0,
                                  txtColor: greyColor3,
                                  fontWeight: FontWeight.w400,
                                ),
                                Space.height(4),
                                if (index == 0 || index == 1)
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: greenShade,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: AppText1(
                                          text: index == 1 ? "3" : "1",
                                          size: 10.0,
                                          txtColor: primaryWhite,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
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
  }
}*/






class ChatListScreen extends GetWidget<ChatListController> {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<ChatListController>(
      init: ChatListController(),
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
                text: "Chats",
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
                              Get.to(() =>  ConversationPage()); //Navigator.push(context, MaterialPageRoute(builder: (context) => ConversationPage()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage("${controller.img2[index]}"),
                                      fit: BoxFit.fill,
                                      height: MySize.size52,
                                      width: MySize.size52,
                                    ),
                                    SizedBox(width: MySize.size18),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        AppText1(
                                          text: "John Doe name • 5Y",
                                          size: 14.0,
                                          txtColor: blk,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        Space.height(4),
                                        index == 0
                                            ? AppText1(
                                          text: "Typing...",
                                          size: 12.0,
                                          txtColor: greyColor3,
                                          fontWeight: FontWeight.w400,
                                        )
                                            : AppText1(
                                          text: "Lorem ipsum dolor sit",
                                          size: 12.0,
                                          txtColor: greyColor3,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    AppText1(
                                      text: index == 0 || index == 1 ? "11:12" : "09:10",
                                      size: 12.0,
                                      txtColor: greyColor3,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    Space.height(4),
                                    if (index == 0 || index == 1)
                                      Container(
                                        decoration: const BoxDecoration(
                                          color: greenShade,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Center(
                                            child: AppText1(
                                              text: index == 1 ? "3" : "1",
                                              size: 10.0,
                                              txtColor: primaryWhite,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
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