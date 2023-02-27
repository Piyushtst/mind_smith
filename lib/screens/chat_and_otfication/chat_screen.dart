import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/app_images.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/widgets/app_text.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
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
            child: Row(
              children: [
                Image(
                  image:  AssetImage(AppImage.chatProfile),
                  fit: BoxFit.fill,
                  height: MySize.size42,
                  width: MySize.size42,
                ),
                SizedBox(width: MySize.size18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText1(
                      text: "John Doe name",
                      size: 14.0,
                      txtColor: blk,
                      fontWeight: FontWeight.w500,
                    ),
                    Space.height(4),
                    AppText1(
                      text: "Online",
                      size: 12.0,
                      txtColor: greyColor3,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration:  BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImage.chatBg), fit: BoxFit.cover),
          ),
          child: Stack(children: <Widget>[
            Column(
              children: <Widget>[
                ChatListWidget(), //Chat list
                InputWidget() // The input widget
              ],
            ),
          ]),
        ));
  }
}

String msg = "";
List msg1 = [];

class InputWidget extends StatefulWidget {
  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 50.0,
      decoration: const BoxDecoration(border: Border(top: BorderSide(color: textFieldBorderColor, width: 1)), color: Colors.white),
      child: Row(
        children: [
          Flexible(
            child: Container(
              margin:
                  EdgeInsets.only(top: MySize.getScaledSizeHeight(8.00), bottom: MySize.getScaledSizeHeight(24.00), left: MySize.getScaledSizeWidth(24.00), right: MySize.getScaledSizeWidth(24.00)),
              decoration: BoxDecoration(
                border: Border.all(color: textFieldBorderColor),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(6.00), vertical: MySize.getScaledSizeHeight(10.00)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        //width: 150,
                        child: Padding(
                          padding: EdgeInsets.only(left: MySize.getScaledSizeWidth(14.00)),
                          child: TextField(
                            style: const TextStyle(color: primaryColor, fontSize: 15.0),
                            controller: textEditingController,
                            decoration: const InputDecoration.collapsed(
                              hintText: 'Start Typing',
                              hintStyle: TextStyle(
                                color: greyColor3,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // width: 50,
                      child: Row(
                        children: [
                          Image(
                            image:  AssetImage(AppImage.chatBg),
                            fit: BoxFit.fill,
                            height: MySize.size22,
                            width: MySize.size22,
                          ),
                          SizedBox(
                            width: MySize.size10,
                          ),
                          Container(
                            height: 24,
                            width: 1,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: MySize.size10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                msg1.add(textEditingController.text);
                              });
                            },
                            child: Image(
                              image:  AssetImage(AppImage.send),
                              fit: BoxFit.fill,
                              height: MySize.size38,
                              width: MySize.size38,
                            ),
                          ),
                        ],
                      ),
                    ),
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

class ConversationPageList extends StatefulWidget {
  @override
  _ConversationPageListState createState() => _ConversationPageListState();
}

class _ConversationPageListState extends State<ConversationPageList> {
  @override
  Widget build(BuildContext context) {
    return ConversationPage();
  }
}

class ChatListWidget extends StatelessWidget {
  final ScrollController listScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
      padding: const EdgeInsets.all(0.0),
      itemBuilder: (context, index) => ChatItemWidget(index),
      itemCount: msg1.length,
      reverse: true,
      controller: listScrollController,
    ));
  }
}

class ChatItemWidget extends StatelessWidget {
  var index;

  ChatItemWidget(this.index);

  @override
  Widget build(BuildContext context) {
    if (index % 2 == 0) {
      return Container(
          margin: const EdgeInsets.only(bottom: 8),
          child: Column(children: [
            Row(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText1(
                        text: "${msg1[index]}",
                        size: 12.0,
                        txtColor: primaryWhite,
                        fontWeight: FontWeight.w400,
                        maxLine: 1,
                      ),
                      Space.height(4),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: AppText1(
                          text: "2:00 am",
                          size: 10.0,
                          txtColor: greyShade,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  width: 200.0,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      //border: Border.all(color: textFieldBorderColor),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      )),
                  margin: const EdgeInsets.only(right: 20.0),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.end, // aligns the chatitem to right end
            ),
          ]));
    } else {
      // This is a received message
      return Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  width: 200.0,
                  decoration: BoxDecoration(
                      color: primaryWhite,
                      border: Border.all(color: textFieldBorderColor),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )),
                  margin: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText1(
                        text: "Lorem ipsum dolor sit amet consectetur.",
                        size: 12.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w400,
                        maxLine: 1,
                      ),
                      Space.height(4),
                      AppText1(
                        text: "2:00 am",
                        size: 10.0,
                        txtColor: greyColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }
  }
}
