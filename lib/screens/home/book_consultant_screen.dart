import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/home/search_screen.dart';
import 'package:mind_smith/screens/navigationbar/nav_screen.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/search_textfield.dart';

class BookConsultantion extends StatefulWidget {
  const BookConsultantion({Key? key}) : super(key: key);

  @override
  State<BookConsultantion> createState() => _BookConsultantionState();
}

class _BookConsultantionState extends State<BookConsultantion> {
  List img=["assets/images/png/colsuntant1.png","assets/images/png/colsuntant2.png","assets/images/png/colsuntant3.png","assets/images/png/colsuntant1.png","assets/images/png/colsuntant2.png",];
  List consultant=["NEUROLOGIST","GYNACOLOGIST","CARDIOLOGIST","NEUROLOGIST","GYNACOLOGIST"];
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
          child: Icon(Icons.arrow_back_ios, color: textBlack, size: MySize.size20),
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
        child: Column(
          children: [
            Space.height(24),
            const SearchTextField(),
            Space.height(32),
           Expanded(
             child: Container(
               child: ListView.builder(
                 //physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                 itemCount: consultant.length,
                 scrollDirection: Axis.vertical,
                 itemBuilder: (context, index) {
                 return  InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
                   },
                   child: Container(
                     alignment: Alignment.centerLeft,
                     margin: EdgeInsets.only(right: MySize.getScaledSizeWidth(16.00), bottom: MySize.getScaledSizeWidth(8.00)),
                     height: MySize.size131,
                     width: double.infinity,
                     decoration: BoxDecoration(
                       //border: Border.all(color: textFieldBorderColor),
                       borderRadius: BorderRadius.circular(14),
                       image:  DecorationImage(image: AssetImage("${img[index]}"),fit: BoxFit.fill,),
                     ),
                     child:  Padding(
                       padding:  EdgeInsets.only(left:MySize.getScaledSizeWidth(24.00) ),
                       child: AppText1(
                         text: "${consultant[index]}",
                         size: 16.0,
                         txtColor: textBlack,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                 );
               },),
             ),
           ),

          ],
        ),
      ),
    );
  }
}
