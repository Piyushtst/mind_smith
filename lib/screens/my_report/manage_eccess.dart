import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';

class ManageEccess extends StatefulWidget {
  const ManageEccess({Key? key}) : super(key: key);

  @override
  State<ManageEccess> createState() => _ManageEccessState();
}

class _ManageEccessState extends State<ManageEccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgWhite,
      appBar: AppBar(
        leadingWidth: MySize.size1,
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.centerLeft,
          child: AppText1(
            text: "Select Address",
            size: 14.0,
            txtColor: textBlack,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: MySize.getScaledSizeWidth(24.00)),
            child: Row(
              children: [
                Image(
                  image: const AssetImage("assets/images/png/profileicon.png"),
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
              Space.height(8),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 20,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image(
                                  image: const AssetImage("assets/images/png/profile6.png"),
                                  fit: BoxFit.fill,
                                  height: MySize.size70,
                                  width: MySize.size70,
                                ),
                                SizedBox(width: MySize.size18),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                accessSheets(context);
                              },
                              child: Container(
                                height: MySize.size38,
                                width: MySize.size84,
                                decoration: BoxDecoration(
                                    color: index % 2 != 0 ? primaryColor.withOpacity(0.10) : primaryColor,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: AppText1(
                                    text: "Approve",
                                    size: 14.0,
                                    txtColor: index % 2 != 0 ? primaryColor : primaryWhite,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),

                          ]),
                    ),
                    const Divider(
                      height: 0.8,
                      color: textFieldBorderColor,
                    ),
                  ],);
                },),


            ],
          ),
        ),
      ),
    );
  }

  makeDismissibl({required Widget child, required BuildContext context}) =>
      GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          Navigator.pop(context);
        },
        child: child,
      );

  Future accessSheets(BuildContext context) async {
    return showModalBottomSheet(
      enableDrag: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      isDismissible: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (BuildContext context) {
        return makeDismissibl(
            context: context,
            child: DraggableScrollableSheet(
              initialChildSize: 0.30,
              minChildSize: 0.3,
              maxChildSize: 1,
              builder: (context, scrollController) {
                return Builder(
                  builder: (context) {
                    return Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(32.00)),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Space.height(20),
                              Center(
                                child: Container(
                                  height: 4,
                                  width: 40,
                                  decoration: BoxDecoration(color: textFieldBorderColor, borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              Space.height(20),
                              AppText1(
                                text: "Want to revoke viewing access?",
                                size: 16.0,
                                txtColor: blk,
                                fontWeight: FontWeight.w500,
                              ),
                              Space.height(20),
                              Row(
                                children: [
                                  Image(
                                    image: const AssetImage("assets/images/png/profile6.png"),
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
                                ],
                              ),
                              Space.height(16),
                              Row(
                                children: [
                                  Expanded(
                                    child: AppButton2(
                                        height: MySize.size50,
                                        btnText: "Remove",
                                        bdrColor:primaryWhite,
                                        bttxtColor: primaryWhite,
                                        bgColor: primaryColor,

                                        onTap: () {
                                          //Navigator.push(context, MaterialPageRoute(builder: (context) => const NavScreen()));
                                        }),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: AppButton2(
                                        height: MySize.size50,
                                        btnText: "Keep",
                                        bttxtColor: textBlack,
                                        bgColor: Colors.white,
                                        onTap: () {
                                          //Navigator.push(context, MaterialPageRoute(builder: (context) => const NavScreen()));
                                        }),
                                  ),

                                ],
                              ),
                              Space.height(20),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ));
      },
    );
  }
}
