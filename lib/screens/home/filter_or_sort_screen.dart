import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/home/filter_screen.dart';
import 'package:mind_smith/screens/profile/profile_screen.dart';
import 'package:mind_smith/widgets/app_text.dart';

class FilterOrShortScreen extends StatefulWidget {
  const FilterOrShortScreen({Key? key}) : super(key: key);

  @override
  State<FilterOrShortScreen> createState() => _FilterOrShortScreenState();
}

class _FilterOrShortScreenState extends State<FilterOrShortScreen> {
  List img1 = [
    "assets/images/png/profile1.png",
    "assets/images/png/profile3.png",
    "assets/images/png/profile4.png",
    "assets/images/png/profil.png",
    "assets/images/png/profile3.png",
  ];
    bool isFavorit=false;
    int inx=0;
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
            text: "Cardiologist",
            size: 14.0,
            txtColor: textBlack,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                child: Column(
                  children: [
                    Space.height(24),
                    Container(
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: img1.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: MySize.getScaledSizeWidth(17.00)),
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image(
                                        image: AssetImage("${img1[index]}"),
                                        height: MySize.size60,
                                      ),
                                      Column(
                                        children: [
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
                                        ],
                                      ),
                                      InkWell(
                                        onTap: () {
                                          inx=index;
                                          setState(() {
                                          });
                                        },
                                        child: inx==index ?Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                          size: MySize.size30,
                                        ):Icon(
                                          Icons.favorite_border,
                                          color: textBlack,
                                          size: MySize.size30,
                                        ),
                                      ),
                                    ],
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
                                    text: "MBBS || DNB - Neurosurgery",
                                    size: 12.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  Space.height(21),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
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
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));

                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: primaryColor),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00), vertical: MySize.getScaledSizeWidth(2.00)),
                                            child: AppText1(
                                              text: "View",
                                              size: 14.0,
                                              txtColor: primaryColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: textFieldBorderColor, width: 1)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(70.00)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const FilterScreen()));
                    },
                    child: Row(
                      children: [
                        Image(
                          image: const AssetImage("assets/images/png/filter.png"),
                          height: MySize.size16,
                          width: MySize.size16,
                        ),
                        AppText1(
                          text: " Filter",
                          size: 14.0,
                          txtColor: blk,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MySize.size35,
                    width: 1,
                    color: greyShade,
                  ),
                  InkWell(
                    onTap: () {
                      sortSheet(context);
                    },
                    child: Row(
                      children: [
                        Image(
                          image: const AssetImage("assets/images/png/sort.png"),
                          height: MySize.size16,
                          width: MySize.size16,
                        ),
                        AppText1(
                          text: " Sort",
                          size: 14.0,
                          txtColor: blk,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  makeDismissibl({required Widget child, required BuildContext context}) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          Navigator.pop(context);
        },
        child: child,
      );
  late String radioVal;
  bool isSelect=false;
  bool isSelect1=false;
  Future sortSheet(BuildContext context) async {
    var radioSelected = 1;
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
              initialChildSize: 0.38,
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Space.height(16),
                            Center(
                              child: Container(
                                height: 4,
                                width: 40,
                                decoration: BoxDecoration(color: textFieldBorderColor, borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            Space.height(16),
                            AppText1(
                              text: "Sort by",
                              size: 16.0,
                              txtColor: blk,
                              fontWeight: FontWeight.w500,
                            ),
                            Space.height(16),
                            Container(
                              height: 44,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: textFieldBorderColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: MySize.getScaledSizeWidth(16.00)),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                  AppText1(
                                    text: "Relavance",
                                    size: 14.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  Radio(
                                    value: 1,
                                    groupValue: radioSelected,
                                    activeColor: greyColor,
                                    onChanged: (value) {
                                      setState(() {
                                        radioSelected = value!;
                                        radioVal = 'male';
                                      });
                                    },
                                  ),
                                ]),
                              ),
                            ),
                            Space.height(16),
                            Container(
                              height: 44,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: textFieldBorderColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: MySize.getScaledSizeWidth(16.00)),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                  AppText1(
                                    text: "Relavance",
                                    size: 14.0,
                                    txtColor: blk,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  Radio(
                                    value: 2,
                                    groupValue: radioSelected,
                                    activeColor: greyColor,
                                    onChanged: (value) {
                                      setState(() {
                                        radioSelected = value!;
                                        radioVal = 'female';
                                      });
                                    },
                                  ),
                                ]),
                              ),
                            ),
                            Space.height(16),
                            AppText1(
                              text: "Charges ",
                              size: 16.0,
                              txtColor: blk,
                              fontWeight: FontWeight.w500,
                            ),
                            Space.height(16),
                            Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      isSelect=!isSelect;
                                      setState(() {
                                        isSelect1=false;
                                      });
                                    },
                                    child: Container(
                                      height: 44,
                                      //width: 100,
                                      decoration:  BoxDecoration(
                                        color: isSelect?Colors.black12.withOpacity(0.04):Colors.white,
                                        border: Border.all(color: isSelect?yelowShade:textFieldBorderColor),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                      ),
                                      child: Center(
                                        child: AppText1(
                                          text: "low to high ",
                                          size: 14.0,
                                          txtColor: blk,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      isSelect1=!isSelect;
                                      setState(() {
                                        isSelect=false;
                                      });
                                    },
                                    child: Container(
                                      height: 44,
                                      //width: 100,
                                      decoration:  BoxDecoration(
                                        color: isSelect1?Colors.black12.withOpacity(0.04):Colors.white,
                                        border: Border.all(color: isSelect1?yelowShade:textFieldBorderColor),
                                        borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topRight:  Radius.circular(10),
                                        ),
                                      ),
                                      child: Center(
                                        child: AppText1(
                                          text: "high to low ",
                                          size: 14.0,
                                          txtColor: blk,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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

/*Future<void> sortSheet(BuildContext context) async {
  int radioSelected = 1;
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
            initialChildSize: 0.45,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Space.height(16),
                           Center(
                             child: Container(
                               height: 4,
                               width: 40,
                               decoration: BoxDecoration(
                                 color: textFieldBorderColor,
                                 borderRadius: BorderRadius.circular(10)
                               ),
                             ),
                           ),
                           Space.height(16),
                           AppText1(
                             text: "Sort by",
                             size: 16.0,
                             txtColor: blk,
                             fontWeight: FontWeight.w500,
                           ),
                           Space.height(16),
                           Container(
                             height: 44,
                             width: double.infinity,
                             decoration: BoxDecoration(
                               border: Border.all(color: textFieldBorderColor),
                               borderRadius: BorderRadius.circular(8),
                             ),
                             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                               AppText1(
                                 text: "Relavance",
                                 size: 14.0,
                                 txtColor: blk,
                                 fontWeight: FontWeight.w400,
                               ),
                               Radio(
                                 value: 1,
                                 groupValue: radioSelected,
                                 activeColor:primaryColor,
                                 onChanged: (value) {
                                   setState(() {
                                     radioSelected = value!;
                                     radioVal = 'male';
                                   });
                                 },
                               ),
                             ]),
                           ),
                         ],
                      ),
                    ),
                  );
                },
              );
            },
          ));
    },
  );
}*/
