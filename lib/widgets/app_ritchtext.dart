import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mind_smith/costants/app_color.dart';

class AppRitchText extends StatelessWidget {
  final String text;
  final String text2;
  Color? txtColor;
  double? size;
  FontStyle? fontStyle;
  String? fontFamily;
  TextAlign? txtAlign;
  TextOverflow? textOverflow;
  int? maxLine;
  AppRitchText({
    Key? key,
    required this.text,
    this.txtColor,
    this.size,

    this.txtAlign,
    this.maxLine,
    this.textOverflow,
    this.fontStyle,
    required this.text2,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text:  TextSpan(
        children: <TextSpan>[
          TextSpan(text:  text,style:  GoogleFonts.firaSans(textStyle: const TextStyle(
            color: greyColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),),),
          TextSpan(text: text2, style: GoogleFonts.firaSans(textStyle:const TextStyle(
            color: greyShade2,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),), ),

        ],
      ),
    ); //getternsleted(context,key)
  }
}




class AppRitchText2 extends StatelessWidget {
  final String text;
  final String text2;
  Color? txtColor;
  double? size;
  FontStyle? fontStyle;
  String? fontFamily;
  TextAlign? txtAlign;
  TextOverflow? textOverflow;
  int? maxLine;
  AppRitchText2({
    Key? key,
    required this.text,
    this.txtColor,
    this.size,

    this.txtAlign,
    this.maxLine,
    this.textOverflow,
    this.fontStyle,
    required this.text2,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text:  TextSpan(
        children: <TextSpan>[
          TextSpan(text:  text,style:  GoogleFonts.firaSans(textStyle:const TextStyle(
            color: greyColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),),),
          TextSpan(text: text2, style: GoogleFonts.firaSans(textStyle:const TextStyle(
            color: primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),), ),

        ],
      ),
    ); //getternsleted(context,key)
  }
}


class AppRitchText3 extends StatelessWidget {
  final String text;
  final String text2;
  Color? txtColor;
  Color? txtColor2;
  double? size;
  double? size2;
  FontStyle? fontStyle;
  String? fontFamily;
  TextAlign? txtAlign;
  TextAlign? txtAlign2;
  TextOverflow? textOverflow;
  FontWeight? fontWeight;
  FontWeight? fontWeight2;
  int? maxLine;
  int? maxLine2;
  AppRitchText3({
    Key? key,
    required this.text,
    required this.text2,
    this.txtColor,
    this.txtColor2,
    this.size,
    this.size2,
    this.fontWeight,
    this.fontWeight2,
    this.txtAlign,
    this.txtAlign2,
    this.maxLine,
    this.maxLine2,
    this.textOverflow,
    this.fontStyle,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text:  TextSpan(
        children: <TextSpan>[
          TextSpan(text:  text,style:  GoogleFonts.firaSans(textStyle: TextStyle(
            color: txtColor,
            fontSize: size,
            fontWeight: fontWeight,
          ),),),
          TextSpan(text: text2, style: GoogleFonts.firaSans(textStyle: TextStyle(
            color: txtColor2,
            fontSize: size2,
            fontWeight:fontWeight2,
          ),), ),

        ],
      ),
    ); //getternsleted(context,key)
  }
}