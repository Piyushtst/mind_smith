import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/profile/address_book.dart';
import 'package:mind_smith/screens/profile/edit_profile.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'star_wallet.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Space.height(24),
              Row(
                children: [
                  Image(
                    image: const AssetImage("assets/images/png/profilescreen.png"),
                    fit: BoxFit.fill,
                    height: MySize.size90,
                    width: MySize.size90,
                  ),
                  SizedBox(width: MySize.size18),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppText1(
                        text: "User Name",
                        size: 16.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w500,
                      ),
                      Space.height(8),
                      AppText1(
                        text: "name@mail.com",
                        size: 14.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
              Space.height(32),
              AppButton2(
                  height: MySize.size50,
                  btnText: "Complete Profile",
                  bdrColor:primaryColor,
                  bttxtColor: primaryColor,
                  bgColor: primaryWhite,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfile()));
                  }),
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
                  padding:  EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00),vertical: MySize.getScaledSizeHeight(16.00)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText1(
                            text: "Star Wallet",
                            size: 16.0,
                            txtColor: blk,
                            fontWeight: FontWeight.w500,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const StarWalletScreen()));

                            },
                            child: Container(
                              alignment: Alignment.centerLeft,
                            //  width: double.infinity,
                              decoration: BoxDecoration(
                                color: primaryWhite,
                                border: Border.all(color: textFieldBorderColor),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(18.00),vertical: MySize.getScaledSizeHeight(6.00)),
                                child: Row(
                                  children: [
                                    AppText1(
                                      text: "History",
                                      size: 14.0,
                                      txtColor: blk,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    SizedBox(width: MySize.size10,),
                                     Icon(Icons.arrow_forward_ios_rounded,size: MySize.size16),
                                  ],
                                ),
                              ),

                            ),
                          ),
                        ],
                      ),
                      Space.height(16),
                      AppText1(
                        text: "Your Balance",
                        size: 12.0,
                        txtColor: greyTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                      Space.height(4),
                      AppText1(
                        text: "\$200.21",
                        size: 32.0,
                        txtColor: blk,
                        fontWeight: FontWeight.w600,
                      ),
                      Space.height(16),
                      Row(
                        children: [
                          Expanded(
                            child: AppButton2(
                                height: MySize.size50,
                                btnText: "Withdraw",
                                bdrColor:primaryWhite,
                                bttxtColor: blk,
                                bgColor: yelowShade,
                                onTap: () {
                                  //Navigator.push(context, MaterialPageRoute(builder: (context) => const NavScreen()));
                                }),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: AppButton2(
                                height: MySize.size50,
                                bdrColor: primaryColor,
                                btnText: "Add money",
                                bttxtColor: primaryWhite,
                                bgColor: primaryColor,
                                onTap: () {
                                  //Navigator.push(context, MaterialPageRoute(builder: (context) => const NavScreen()));
                                }),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Space.height(32),
              ListTile(
                minLeadingWidth : MySize.size16,
                leading: Image(
                  image: const AssetImage("assets/images/png/pene.png"),
                  height: MySize.size36,
                  width: MySize.size36,
                ),
                title: AppText1(
                  text: "Edit Profile",
                  size: 14.0,
                  txtColor: blk,
                  fontWeight: FontWeight.w400,
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: MySize.size16,color: blk),
              ),
              ListTile(
                minLeadingWidth : MySize.size16,
                leading: Image(
                  image: const AssetImage("assets/images/png/myorder.png"),
                  height: MySize.size36,
                  width: MySize.size36,
                ),
                title: AppText1(
                  text: "My Orders",
                  size: 14.0,
                  txtColor: blk,
                  fontWeight: FontWeight.w400,
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: MySize.size16,color: blk),
              ),
              ListTile(
                minLeadingWidth : MySize.size16,
                leading: Image(
                  image: const AssetImage("assets/images/png/address.png"),
                  height: MySize.size36,
                  width: MySize.size36,
                ),
                title: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AddressBook()));

                  },
                  child: AppText1(
                    text: "Address Book",
                    size: 14.0,
                    txtColor: blk,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: MySize.size16,color: blk),
              ),
              Space.height(18),
              const Divider(
                height: 0.8,
                color: textFieldBorderColor,
              ),
              Space.height(18),
              ListTile(
                minLeadingWidth : MySize.size16,
                leading: Image(
                  image: const AssetImage("assets/images/png/roundnote.png"),
                  height: MySize.size36,
                  width: MySize.size36,
                ),
                title: AppText1(
                  text: "Terms & condition",
                  size: 14.0,
                  txtColor: blk,
                  fontWeight: FontWeight.w400,
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: MySize.size16,color: blk),
              ),
              ListTile(
                minLeadingWidth : MySize.size16,
                leading: Image(
                  image: const AssetImage("assets/images/png/roundnote.png"),
                  height: MySize.size36,
                  width: MySize.size36,
                ),
                title: AppText1(
                  text: "Privacy policy",
                  size: 14.0,
                  txtColor: blk,
                  fontWeight: FontWeight.w400,
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: MySize.size16,color: blk),
              ),
              ListTile(
                minLeadingWidth : MySize.size16,
                leading: Image(
                  image: const AssetImage("assets/images/png/roundnote.png"),
                  height: MySize.size36,
                  width: MySize.size36,
                ),
                title: AppText1(
                  text: "FAQs",
                  size: 14.0,
                  txtColor: blk,
                  fontWeight: FontWeight.w400,
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: MySize.size16,color: blk),
              ),
              Space.height(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: const AssetImage("assets/images/png/logout.png"),
                    height: MySize.size20,
                    width: MySize.size20,
                  ),
                  SizedBox(width: MySize.size10),
                  AppText1(
                    text: "Log out",
                    size: 16.0,
                    txtColor: redColor,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              Space.height(40),
            ],
          ),
        ),
      ),
    );
  }
}
