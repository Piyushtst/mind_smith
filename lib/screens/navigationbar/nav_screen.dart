import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/home/home_screen.dart';
import 'package:mind_smith/widgets/app_text.dart';

class NavScreen extends StatefulWidget {
  //final currentIndex1;

  const NavScreen({Key? key, /*this.currentIndex1*/}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}
class _NavScreenState extends State<NavScreen> {
  /*void initState() {
   // currentIndex=widget.currentIndex1;
    setState(() {

    });
    super.initState();
  }*/
  int currentIndex = 0;
  List pages = [  const HomeScreen(),  Container(),Container(),Container(),];
  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        decoration: const BoxDecoration(
          color:Colors.white,
          border: Border(top: BorderSide(color: textFieldBorderColor, width: 1)),
        ),
        padding: const EdgeInsets.only(top: 8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    currentIndex = 0;
                    setState(() {});
                  },
                  child: Container(
                    width: 60,
                    // color: AppColor.yellow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        currentIndex == 0
                            ?   ImageIcon(const AssetImage("assets/images/png/navtab1.png"),size: MySize.size24,)
                            :  ImageIcon(const AssetImage("assets/images/png/navtab1.png"), color:greyColor,size: MySize.size24),
                        Padding(
                          padding:  EdgeInsets.only(top:MySize.getScaledSizeHeight(4.00) ,),
                          child: AppText1(
                            text: "Home",
                            size: 10.0,
                            txtColor: currentIndex == 0 ?textBlack:greyColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 7),
                        if (currentIndex == 0)
                          Container(
                            margin: EdgeInsets.only(bottom:MySize.getScaledSizeHeight(4.00)),
                            height: 3,
                            width: MySize.getScaledSizeWidth(18),
                            decoration: BoxDecoration(
                                color: textBlack,
                              borderRadius: BorderRadius.circular(2)
                            ),
                          ),
                      ],
                    ),
                  )),
              InkWell(
                  onTap: () {
                    currentIndex = 1;
                    setState(() {});
                  },
                  child: Container(
                    width: 60,
                    // color: AppColor.yellow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        currentIndex == 1
                            ?   ImageIcon(const AssetImage("assets/images/png/navtab2.png"),size: MySize.size24,)
                            :  ImageIcon(const AssetImage("assets/images/png/navtab2.png"), color:greyColor,size: MySize.size24),
                        Padding(
                          padding:  EdgeInsets.only(top:MySize.getScaledSizeHeight(4.00) ,),
                          child: AppText1(
                            text: "Appointment",
                            size: 10.0,
                            txtColor: currentIndex == 1 ?textBlack:greyColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 7),
                        if (currentIndex == 1)
                          Container(
                            margin: EdgeInsets.only(bottom:MySize.getScaledSizeHeight(4.00)),
                            height: 3,
                            width: MySize.getScaledSizeWidth(18),
                            decoration: BoxDecoration(
                                color: textBlack,
                                borderRadius: BorderRadius.circular(2)
                            ),
                          ),
                      ],
                    ),
                  )),
              InkWell(
                  onTap: () {
                    currentIndex = 2;
                    setState(() {});
                  },
                  child: Container(
                    width: 60,
                    // color: AppColor.yellow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        currentIndex == 2
                            ?   ImageIcon(const AssetImage("assets/images/png/navtab3.png"),  size: MySize.size24,)
                            :  ImageIcon(const AssetImage("assets/images/png/navtab3.png"),color:greyColor, size: MySize.size24),
                        Padding(
                          padding:  EdgeInsets.only(top:MySize.getScaledSizeHeight(4.00) ,),
                          child: AppText1(
                            text: "My Reports",
                            size: 10.0,
                            txtColor: currentIndex == 2 ?textBlack:greyColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 7),
                        if (currentIndex == 2)
                          Container(
                            margin: EdgeInsets.only(bottom:MySize.getScaledSizeHeight(4.00)),
                            height: 3,
                            width: MySize.getScaledSizeWidth(18),
                            decoration: BoxDecoration(
                                color: textBlack,
                                borderRadius: BorderRadius.circular(2)
                            ),
                          ),
                      ],
                    ),
                  )),
              InkWell(
                  onTap: () {
                    currentIndex = 3;
                    setState(() {});
                  },
                  child: Container(
                    width: 60,
                    // color: AppColor.yellow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        currentIndex == 3
                            ?   ImageIcon(const AssetImage("assets/images/png/navtab4.png"),  size: MySize.size24,)
                            :  ImageIcon(const AssetImage("assets/images/png/navtab4.png"), color:greyColor,size: MySize.size24),
                        Padding(
                          padding:  EdgeInsets.only(top:MySize.getScaledSizeHeight(4.00) ,),
                          child: AppText1(
                            text: "My Profile",
                            size: 10.0,
                            txtColor: currentIndex == 3 ?textBlack:greyColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 7),
                        if (currentIndex == 3)
                          Container(
                            margin: EdgeInsets.only(bottom:MySize.getScaledSizeHeight(4.00)),
                            height: 3,
                            width: MySize.getScaledSizeWidth(18),
                            decoration: BoxDecoration(
                                color: textBlack,
                                borderRadius: BorderRadius.circular(2)
                            ),
                          ),
                      ],
                    ),
                  )),
             /* InkWell(
                onTap: () {
                  currentIndex = 4;
                  setState(() {});
                },
                child: Container(
                  //alignment: Alignment.center,
                  width: 60,
                  //color: AppColor.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      currentIndex == 4
                          ? const ImageIcon(AssetImage("assets/icons/profile_1.png"), color: primaryColor, size: 20)
                          : const ImageIcon(AssetImage("assets/icons/profile_.png"), size: 20),
                      AppText1(
                        text: "Home",
                        size: 10.0,
                        txtColor: currentIndex == 4 ?textBlack:greyColor,
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 7),
                      if (currentIndex == 4)
                        Container(
                          height: 2,
                          color: primaryColor,
                        ),
                    ],
                  ),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }




/*  Widget botomBar(BuildContext context) {
    MySize().init(
      context,
    );
    return  Container(
      height: 60,
      width: double.infinity,
      decoration: const BoxDecoration(
        color:Colors.white,
        border: Border(top: BorderSide(color: textFieldBorderColor, width: 1)),
      ),
      padding: const EdgeInsets.only(top: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  currentIndex = 0;
                  setState(() {});
                },
                child: Container(
                  width: 60,
                  // color: AppColor.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      currentIndex == 0
                          ?   ImageIcon(const AssetImage("assets/images/png/navtab1.png"),size: MySize.size24,)
                          :  ImageIcon(const AssetImage("assets/images/png/navtab1.png"), color:greyColor,size: MySize.size24),
                      Padding(
                        padding:  EdgeInsets.only(top:MySize.getScaledSizeHeight(4.00) ,),
                        child: AppText1(
                          text: "Home",
                          size: 10.0,
                          txtColor: currentIndex == 0 ?textBlack:greyColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 7),
                      if (currentIndex == 0)
                        Container(
                          margin: EdgeInsets.only(bottom:MySize.getScaledSizeHeight(4.00)),
                          height: 3,
                          width: MySize.getScaledSizeWidth(18),
                          decoration: BoxDecoration(
                              color: textBlack,
                              borderRadius: BorderRadius.circular(2)
                          ),
                        ),
                    ],
                  ),
                )),
            InkWell(
                onTap: () {
                  currentIndex = 1;
                  setState(() {});
                },
                child: Container(
                  width: 60,
                  // color: AppColor.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      currentIndex == 1
                          ?   ImageIcon(const AssetImage("assets/images/png/navtab2.png"),size: MySize.size24,)
                          :  ImageIcon(const AssetImage("assets/images/png/navtab2.png"), color:greyColor,size: MySize.size24),
                      Padding(
                        padding:  EdgeInsets.only(top:MySize.getScaledSizeHeight(4.00) ,),
                        child: AppText1(
                          text: "Appointment",
                          size: 10.0,
                          txtColor: currentIndex == 1 ?textBlack:greyColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 7),
                      if (currentIndex == 1)
                        Container(
                          margin: EdgeInsets.only(bottom:MySize.getScaledSizeHeight(4.00)),
                          height: 3,
                          width: MySize.getScaledSizeWidth(18),
                          decoration: BoxDecoration(
                              color: textBlack,
                              borderRadius: BorderRadius.circular(2)
                          ),
                        ),
                    ],
                  ),
                )),
            InkWell(
                onTap: () {
                  currentIndex = 2;
                  setState(() {});
                },
                child: Container(
                  width: 60,
                  // color: AppColor.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      currentIndex == 2
                          ?   ImageIcon(const AssetImage("assets/images/png/navtab3.png"),  size: MySize.size24,)
                          :  ImageIcon(const AssetImage("assets/images/png/navtab3.png"),color:greyColor, size: MySize.size24),
                      Padding(
                        padding:  EdgeInsets.only(top:MySize.getScaledSizeHeight(4.00) ,),
                        child: AppText1(
                          text: "My Reports",
                          size: 10.0,
                          txtColor: currentIndex == 2 ?textBlack:greyColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 7),
                      if (currentIndex == 2)
                        Container(
                          margin: EdgeInsets.only(bottom:MySize.getScaledSizeHeight(4.00)),
                          height: 3,
                          width: MySize.getScaledSizeWidth(18),
                          decoration: BoxDecoration(
                              color: textBlack,
                              borderRadius: BorderRadius.circular(2)
                          ),
                        ),
                    ],
                  ),
                )),
            InkWell(
                onTap: () {
                  currentIndex = 3;
                  setState(() {});
                },
                child: Container(
                  width: 60,
                  // color: AppColor.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      currentIndex == 3
                          ?   ImageIcon(const AssetImage("assets/images/png/navtab4.png"),  size: MySize.size24,)
                          :  ImageIcon(const AssetImage("assets/images/png/navtab4.png"), color:greyColor,size: MySize.size24),
                      Padding(
                        padding:  EdgeInsets.only(top:MySize.getScaledSizeHeight(4.00) ,),
                        child: AppText1(
                          text: "My Profile",
                          size: 10.0,
                          txtColor: currentIndex == 3 ?textBlack:greyColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 7),
                      if (currentIndex == 3)
                        Container(
                          margin: EdgeInsets.only(bottom:MySize.getScaledSizeHeight(4.00)),
                          height: 3,
                          width: MySize.getScaledSizeWidth(18),
                          decoration: BoxDecoration(
                              color: textBlack,
                              borderRadius: BorderRadius.circular(2)
                          ),
                        ),
                    ],
                  ),
                )),
            */
/* InkWell(
                onTap: () {
                  currentIndex = 4;
                  setState(() {});
                },
                child: Container(
                  //alignment: Alignment.center,
                  width: 60,
                  //color: AppColor.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      currentIndex == 4
                          ? const ImageIcon(AssetImage("assets/icons/profile_1.png"), color: primaryColor, size: 20)
                          : const ImageIcon(AssetImage("assets/icons/profile_.png"), size: 20),
                      AppText1(
                        text: "Home",
                        size: 10.0,
                        txtColor: currentIndex == 4 ?textBlack:greyColor,
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 7),
                      if (currentIndex == 4)
                        Container(
                          height: 2,
                          color: primaryColor,
                        ),
                    ],
                  ),
                ),
              ),*//*
          ],
        ),
      ),
    );
  }*/
}



class botmbar extends StatefulWidget {
  const botmbar({Key? key}) : super(key: key);

  @override
  State<botmbar> createState() => _botmbarState();
}

class _botmbarState extends State<botmbar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: const BoxDecoration(
        color:Colors.white,
        border: Border(top: BorderSide(color: textFieldBorderColor, width: 1)),
      ),
      padding: const EdgeInsets.only(top: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  currentIndex = 0;
                  setState(() {});
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NavScreen()));
                },
                child: Container(
                  width: 60,
                  // color: AppColor.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      currentIndex == 0
                          ?   ImageIcon(const AssetImage("assets/images/png/navtab1.png"),size: MySize.size24,)
                          :  ImageIcon(const AssetImage("assets/images/png/navtab1.png"), color:greyColor,size: MySize.size24),
                      Padding(
                        padding:  EdgeInsets.only(top:MySize.getScaledSizeHeight(4.00) ,),
                        child: AppText1(
                          text: "Home",
                          size: 10.0,
                          txtColor: currentIndex == 0 ?textBlack:greyColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 7),
                      if (currentIndex == 0)
                        Container(
                          margin: EdgeInsets.only(bottom:MySize.getScaledSizeHeight(4.00)),
                          height: 3,
                          width: MySize.getScaledSizeWidth(18),
                          decoration: BoxDecoration(
                              color: textBlack,
                              borderRadius: BorderRadius.circular(2)
                          ),
                        ),
                    ],
                  ),
                )),
            InkWell(
                onTap: () {
                  currentIndex = 1;
                  setState(() {});
                },
                child: Container(
                  width: 60,
                  // color: AppColor.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      currentIndex == 1
                          ?   ImageIcon(const AssetImage("assets/images/png/navtab2.png"),size: MySize.size24,)
                          :  ImageIcon(const AssetImage("assets/images/png/navtab2.png"), color:greyColor,size: MySize.size24),
                      Padding(
                        padding:  EdgeInsets.only(top:MySize.getScaledSizeHeight(4.00) ,),
                        child: AppText1(
                          text: "Appointment",
                          size: 10.0,
                          txtColor: currentIndex == 1 ?textBlack:greyColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 7),
                      if (currentIndex == 1)
                        Container(
                          margin: EdgeInsets.only(bottom:MySize.getScaledSizeHeight(4.00)),
                          height: 3,
                          width: MySize.getScaledSizeWidth(18),
                          decoration: BoxDecoration(
                              color: textBlack,
                              borderRadius: BorderRadius.circular(2)
                          ),
                        ),
                    ],
                  ),
                )),
            InkWell(
                onTap: () {
                  currentIndex = 2;
                  setState(() {});
                },
                child: Container(
                  width: 60,
                  // color: AppColor.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      currentIndex == 2
                          ?   ImageIcon(const AssetImage("assets/images/png/navtab3.png"),  size: MySize.size24,)
                          :  ImageIcon(const AssetImage("assets/images/png/navtab3.png"),color:greyColor, size: MySize.size24),
                      Padding(
                        padding:  EdgeInsets.only(top:MySize.getScaledSizeHeight(4.00) ,),
                        child: AppText1(
                          text: "My Reports",
                          size: 10.0,
                          txtColor: currentIndex == 2 ?textBlack:greyColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 7),
                      if (currentIndex == 2)
                        Container(
                          margin: EdgeInsets.only(bottom:MySize.getScaledSizeHeight(4.00)),
                          height: 3,
                          width: MySize.getScaledSizeWidth(18),
                          decoration: BoxDecoration(
                              color: textBlack,
                              borderRadius: BorderRadius.circular(2)
                          ),
                        ),
                    ],
                  ),
                )),
            InkWell(
                onTap: () {
                  currentIndex = 3;
                  setState(() {});
                },
                child: Container(
                  width: 60,
                  // color: AppColor.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      currentIndex == 3
                          ?   ImageIcon(const AssetImage("assets/images/png/navtab4.png"),  size: MySize.size24,)
                          :  ImageIcon(const AssetImage("assets/images/png/navtab4.png"), color:greyColor,size: MySize.size24),
                      Padding(
                        padding:  EdgeInsets.only(top:MySize.getScaledSizeHeight(4.00) ,),
                        child: AppText1(
                          text: "My Profile",
                          size: 10.0,
                          txtColor: currentIndex == 3 ?textBlack:greyColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 7),
                      if (currentIndex == 3)
                        Container(
                          margin: EdgeInsets.only(bottom:MySize.getScaledSizeHeight(4.00)),
                          height: 3,
                          width: MySize.getScaledSizeWidth(18),
                          decoration: BoxDecoration(
                              color: textBlack,
                              borderRadius: BorderRadius.circular(2)
                          ),
                        ),
                    ],
                  ),
                )),
            /* InkWell(
                onTap: () {
                  currentIndex = 4;
                  setState(() {});
                },
                child: Container(
                  //alignment: Alignment.center,
                  width: 60,
                  //color: AppColor.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      currentIndex == 4
                          ? const ImageIcon(AssetImage("assets/icons/profile_1.png"), color: primaryColor, size: 20)
                          : const ImageIcon(AssetImage("assets/icons/profile_.png"), size: 20),
                      AppText1(
                        text: "Home",
                        size: 10.0,
                        txtColor: currentIndex == 4 ?textBlack:greyColor,
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 7),
                      if (currentIndex == 4)
                        Container(
                          height: 2,
                          color: primaryColor,
                        ),
                    ],
                  ),
                ),
              ),*/
          ],
        ),
      ),
    );
  }
}
