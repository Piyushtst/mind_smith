import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mind_smith/costants/app_color.dart';

class AppText extends StatelessWidget {
  final String text;
  Color? txtColor;
  double? size;
  FontWeight? fontWeight;
  FontStyle? fontStyle;
  String? fontFamily;
  TextAlign? txtAlign;
  TextOverflow? textOverflow;
  int? maxLine;

  AppText({
    Key? key,
    required this.text,
    this.txtColor,
    this.size,
    this.fontWeight,
    this.txtAlign,
    this.maxLine,
    this.textOverflow,
    this.fontStyle,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        maxLines: maxLine ?? 2,
        style: TextStyle(
          fontFamily: fontFamily,
          fontStyle: fontStyle,
          color: txtColor ?? Colors.black,
          fontSize: size ?? 8,
          fontWeight: fontWeight ?? FontWeight.normal,
        ),
        textAlign: txtAlign); //getternsleted(context,key)
  }
}





class AppText1 extends StatelessWidget {
  final String text;
  Color? txtColor;
  double? size;
  FontWeight? fontWeight;
  FontStyle? fontStyle;
  String? fontFamily;
  TextAlign? txtAlign;
  TextOverflow? textOverflow;
  int? maxLine;

  AppText1({
    Key? key,
    required this.text,
    this.txtColor,
    this.size,
    this.fontWeight,
    this.txtAlign,
    this.maxLine,
    this.textOverflow,
    this.fontStyle,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        maxLines: maxLine ?? 2,
        style: GoogleFonts.firaSans(textStyle: TextStyle(
          fontFamily: fontFamily,
          fontStyle: fontStyle,
          color: txtColor ?? Colors.black,
          fontSize: size ?? 8,
          fontWeight: fontWeight ?? FontWeight.normal,
        ),),
        textAlign: txtAlign); //getternsleted(context,key)
  }
}



