import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/home/book_consultant_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/search_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            image: const AssetImage("assets/images/png/appbarimg.png"),
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
                Image(
                  image: const AssetImage("assets/images/png/msgimg.png"),
                  fit: BoxFit.contain,
                  height: MySize.size23,
                  width: MySize.size23,
                ),
                SizedBox(width: MySize.size20),
                Image(
                  image: const AssetImage("assets/images/png/notification.png"),
                  fit: BoxFit.contain,
                  height: MySize.size23,
                  width: MySize.size23,
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
        child: Expanded(
          child: Column(
            children: [
              Column(
                children: [
                  Space.height(24),
                  const SearchTextField(),
                  Space.height(32),
                  Container(
                    // height: MySize.size160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: textFieldBorderColor),
                      color: primaryColor.withOpacity(0.10),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MySize.getScaledSizeWidth(24.00),
                      ),
                      child: Column(
                        children: [
                          Space.height(16),
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
                          Space.height(17),
                          AppButton(
                              height: MySize.size48,
                              btnText: "Book Consultation",
                              bttxtColor: primaryWhite,
                              bgColor: primaryColor,
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const BookConsultantion()));
                              }),
                          Space.height(16),
                        ],
                      ),
                    ),
                  ),
                  Space.height(32),
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
              Expanded(
                child: Container(
                  //height: 240,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: MySize.getScaledSizeWidth(16.00),bottom: MySize.getScaledSizeWidth(4.00)),
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
                                  children: [
                                    Image(image: const AssetImage("assets/images/png/profil.png"), height: MySize.size60,),
                                    Icon(Icons.favorite_border, color: textBlack, size: MySize.size30,)

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
                    },),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
