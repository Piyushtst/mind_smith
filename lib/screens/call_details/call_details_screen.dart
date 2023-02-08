import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';

class CallDetailScreen extends StatefulWidget {
  const CallDetailScreen({Key? key}) : super(key: key);

  @override
  State<CallDetailScreen> createState() => _CallDetailScreenState();
}

class _CallDetailScreenState extends State<CallDetailScreen> {
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
            text: "Post Call Details",
            size: 14.0,
            txtColor: textBlack,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: MySize.getScaledSizeWidth(24.00)),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: Image(
                  image: const AssetImage("assets/images/png/roundcross.png"),
                  fit: BoxFit.contain,
                  height: MySize.size24,
                  width: MySize.size24,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeHeight(24.00)),
          child: Column(
            children: [
              Space.height(16),
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryWhite,
                  border: Border.all(color: textFieldBorderColor),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(18.00), horizontal: MySize.getScaledSizeHeight(18.00)),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: greenShade.withOpacity(0.11),
                          //border: Border.all(color: textFieldBorderColor),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(14.00), horizontal: MySize.getScaledSizeHeight(8.00)),
                          child: Row(
                            children: [
                              Image(
                                image: const AssetImage("assets/images/png/whatsapp.png"),
                                height: MySize.size35,
                                width: MySize.size35,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              AppText1(
                                text: "Call Completed",
                                size: 18.0,
                                txtColor: blk,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Space.height(18),
                      Row(children: [
                        Image(
                          image: const AssetImage("assets/images/png/profile6.png"),
                          fit: BoxFit.fill,
                          height: MySize.size70,
                          width: MySize.size70,
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
                    ],
                  ),
                ),
              ),
              Space.height(32),
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryWhite,
                  border: Border.all(color: redColor),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(18.00), horizontal: MySize.getScaledSizeHeight(18.00)),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Image(
                        image: const AssetImage("assets/images/png/book.png"),
                        fit: BoxFit.fill,
                        height: MySize.size30,
                        width: MySize.size30,
                      ),
                      const SizedBox(width: 10),
                      AppText1(
                        text: "Assessment ",
                        size: 16.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w600,
                      ),
                    ]),
                    Space.height(16),
                    Container(
                      alignment: Alignment.centerLeft,
                      //height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.05),
                        //border: Border.all(color: textFieldBorderColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(12.00), horizontal: MySize.getScaledSizeHeight(16.00)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(
                              image: const AssetImage("assets/images/png/clock.png"),
                              fit: BoxFit.fill,
                              height: MySize.size24,
                              width: MySize.size24,
                            ),
                            SizedBox(width: MySize.size11),
                            AppText1(
                              text: "1:30 - 2:30 pm",
                              size: 14.0,
                              txtColor: blk,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Space.height(16),
                    AppText1(
                      text: "Lorem ipsum dolor sit amet consectetur. Augue nunc scelerisque quis porttitor lacus. Proin porttitor euismod nisl quis ",
                      size: 14.0,
                      txtColor: greyShade,
                      fontWeight: FontWeight.w400,
                      maxLine: 3,
                      txtAlign: TextAlign.start,
                    ),
                    Space.height(16),
                    const Divider(color: textFieldBorderColor, height: 1, thickness: 1),
                    Space.height(16),
                    AppText1(
                      text: "You should complete this assessment to go \nfurther ",
                      size: 14.0,
                      txtColor: redColor,
                      fontWeight: FontWeight.w400,
                      maxLine: 2,
                      txtAlign: TextAlign.start,
                    ),
                    Space.height(16),
                    AppButton(
                        btnText: "Complete Assessment",
                        bttxtColor: Colors.black,
                        bgColor: primaryColor,
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const CallDetailScreen()));
                        }),
                    Space.height(16),
                  ]),
                ),
              ),
              Space.height(32),
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryWhite,
                  border: Border.all(color: textFieldBorderColor),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: lightGrey,
                      // border: Border.all(color: textFieldBorderColor),
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: MySize.getScaledSizeHeight(12.00),
                      ),
                      child: AppText1(
                        text: "Lab tests",
                        size: 16.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Space.height(18),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(12.00), horizontal: MySize.getScaledSizeHeight(20.00)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image(image: const AssetImage("assets/images/png/test.png"), fit: BoxFit.fill, height: MySize.size30, width: MySize.size30),
                            const SizedBox(
                              width: 8,
                            ),
                            AppText1(
                              text: "Blood count",
                              size: 14.0,
                              txtColor: blk,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        Space.height(16),
                        Row(
                          children: [
                            Image(image: const AssetImage("assets/images/png/test.png"), fit: BoxFit.fill, height: MySize.size30, width: MySize.size30),
                            const SizedBox(
                              width: 8,
                            ),
                            AppText1(
                              text: "Enzyme analysis",
                              size: 14.0,
                              txtColor: blk,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        Space.height(16),
                        Row(
                          children: [
                            Image(image: const AssetImage("assets/images/png/test.png"), fit: BoxFit.fill, height: MySize.size30, width: MySize.size30),
                            const SizedBox(
                              width: 8,
                            ),
                            AppText1(
                              text: "Bone marrow aspiration.",
                              size: 14.0,
                              txtColor: blk,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        Space.height(16),
                      ],
                    ),
                  ),
                ]),
              ),
              Space.height(32),
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryWhite,
                  border: Border.all(color: textFieldBorderColor),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: lightGrey,
                      // border: Border.all(color: textFieldBorderColor),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: MySize.getScaledSizeHeight(12.00),
                      ),
                      child: AppText1(
                        text: "Prescription",
                        size: 16.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Space.height(18),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(12.00), horizontal: MySize.getScaledSizeHeight(20.00)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText1(
                          text: "Paracetamol 500mg",
                          size: 14.0,
                          txtColor: blk,
                          fontWeight: FontWeight.w500,
                        ),
                        Space.height(16),
                        AppText1(
                          text: "Liquiprin",
                          size: 14.0,
                          txtColor: blk,
                          fontWeight: FontWeight.w500,
                        ),
                        Space.height(16),
                        Container(
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
                                text: "Download prescription",
                                size: 16.0,
                                txtColor: primaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Space.height(16),
                        AppButton(
                            btnText: "Get medicines Now",
                            bttxtColor: primaryWhite,
                            bgColor: primaryColor,
                            onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => const EnterOtp()));
                            }),
                        Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: lightGrey,
                            // border: Border.all(color: textFieldBorderColor),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18)),
                          ),
                        ),
                      ],
                    ),
                  ),
                      Container(
                        height: MySize.size32,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                         image: DecorationImage(image: AssetImage("assets/images/png/bottomborder.png",),fit: BoxFit.fill),
                        ),
                      ),
                ]
                ),
              ),
              Space.height(32),
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryWhite,
                  border: Border.all(color: textFieldBorderColor),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(18.00), horizontal: MySize.getScaledSizeHeight(18.00)),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Image(
                        image: const AssetImage("assets/images/png/book.png"),
                        fit: BoxFit.fill,
                        height: MySize.size30,
                        width: MySize.size30,
                      ),
                      const SizedBox(width: 10),
                      AppText1(
                        text: "Suggest Plan For you ",
                        size: 16.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w600,
                      ),
                    ]),
                    Space.height(16),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryWhite,
                        border: Border.all(color: textFieldBorderColor),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(18.00), horizontal: MySize.getScaledSizeHeight(18.00)),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [

                            AppText1(
                              text: "Plan Name",
                              size: 20.0,
                              txtColor: blk,
                              fontWeight: FontWeight.w500,
                            ),AppText1(
                              text: "\$20",
                              size: 24.0,
                              txtColor: blk,
                              fontWeight: FontWeight.w600,
                            ),
                          ]),
                          Space.height(16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText1(
                                    text: "2 month Duration",
                                    size: 14.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Space.height(6),
                                  AppText1(
                                    text: "5 Sessions",
                                    size: 14.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Space.height(6),
                                  AppText1(
                                    text: "3 Assessment",
                                    size: 14.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Space.height(6),
                                ],
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: MySize.getScaledSizeHeight(18.00)),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(color: primaryColor),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child:  Padding(
                                          padding:  EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00),vertical:MySize.getScaledSizeWidth(8.00) ),
                                          child: AppText1(
                                            text: "Buy",
                                            size: 14.0,
                                            txtColor: primaryColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                        ]),
                      ),
                    ),

                  ]),
                ),
              ),
              Space.height(40),
            ],
          ),
        ),
      ),
    );
  }
}
