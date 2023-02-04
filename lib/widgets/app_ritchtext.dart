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
          TextSpan(text:  text,style:  GoogleFonts.firaSans(textStyle:const TextStyle(
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