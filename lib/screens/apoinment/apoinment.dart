import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/call_details/call_details_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';

class AponmentScreen extends StatefulWidget {
  const AponmentScreen({Key? key}) : super(key: key);

  @override
  State<AponmentScreen> createState() => _AponmentScreenState();
}

class _AponmentScreenState extends State<AponmentScreen> {
  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return Scaffold(
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
        child: Column(
          children: [

            Expanded(
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(top: MySize.getScaledSizeWidth(16.00),bottom: MySize.getScaledSizeWidth(8.00)),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      Space.height(6),
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
                                      Space.height(6),
                                      AppText1(
                                        text: "John Doe name ",
                                        size: 14.0,
                                        txtColor: blk,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Image(
                                image: const AssetImage("assets/images/png/profile6.png"),
                                fit: BoxFit.fill,
                                height: MySize.size70,
                                width: MySize.size70,
                              ),
                            ]),
                        Space.height(16),
                        Container(
                          alignment: Alignment.centerLeft,
                          //height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.pink.withOpacity(0.05),
                            border: Border.all(color: textFieldBorderColor),
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
                                  height: MySize.size13,
                                  width: MySize.size13,
                                ),
                                SizedBox(width: MySize.size13),
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
                        Row(
                          children: [
                            Expanded(
                              child: AppButton1(
                                  btnText: "Reschedule",
                                  bttxtColor: textBlack,
                                  bgColor: Colors.white,
                                  onTap: () {
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) => const NavScreen()));
                                  }),
                            ),
                            const SizedBox(width:16 ),
                            Expanded(
                              child: AppButton(
                                  btnText: "Join Call",
                                  bttxtColor: Colors.black,
                                  bgColor: primaryColor,
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CallDetailScreen()));
                                  }),
                            ),
                          ],
                        ),
                        Space.height(16),
                      ],
                    ),
                  ),
                );
              },),
            )
            
          ],
        ),
      ),
    );
  }
}
