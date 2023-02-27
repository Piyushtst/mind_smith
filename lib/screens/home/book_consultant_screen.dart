import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/controller/book_consultant_controller.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/home/search_screen.dart';
import 'package:mind_smith/screens/navigationbar/nav_screen.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/search_textfield.dart';


class BookConsultantion extends GetWidget<BookConsultantController> {
  const BookConsultantion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return GetBuilder<BookConsultantController>(
      init: BookConsultantController(),
      builder: (controller) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
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
                text: "Book Consultation",
                size: 14.0,
                txtColor: textBlack,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          body: Column(
            children: [
              Space.height(24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                child: const SearchTextField(),
              ),
              Space.height(32),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                    child: Column(
                      children: [
                        Container(
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: controller.consultant.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Get.to(() => const SearchScreen());//Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
                                },
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(right: MySize.getScaledSizeWidth(16.00), bottom: MySize.getScaledSizeWidth(8.00)),
                                  height: MySize.size131,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    //border: Border.all(color: textFieldBorderColor),
                                    borderRadius: BorderRadius.circular(14),
                                    image: DecorationImage(
                                      image: AssetImage("${controller.img[index]}"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: MySize.getScaledSizeWidth(24.00)),
                                    child: AppText1(
                                      text: "${controller.consultant[index]}",
                                      size: 16.0,
                                      txtColor: textBlack,
                                      fontWeight: FontWeight.w700,
                                    ),
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
              const botmbar(),
            ],
          ),
        );
      },);
  }
}