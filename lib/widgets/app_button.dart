import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/widgets/app_text.dart';

class AppButton extends StatefulWidget {
  final String btnText;
  Function? onTap;
  Color? bttxtColor;
  Color? bgColor;
  double? width;
  double? height;

  AppButton(
      {Key? key,
        required this.btnText,
        this.onTap,
        this.bttxtColor,
        this.width,
        this.height,
        this.bgColor})
      : super(key: key);

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: Container(
        decoration: BoxDecoration(
            color:  widget.bgColor ?? primaryColor,
            borderRadius: BorderRadius.circular(16)),
        height: 48,//56
        width: widget.width ?? double.infinity,
        child: Center(
            child: FittedBox(
              child: AppText1(
                text: widget.btnText,
                size: 16,
                txtColor: primaryWhite,
                 fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontFamily: '',
              ),
            )),
      ),
    );
  }
}







class AppButton1 extends StatefulWidget {
  final String btnText;
  Function? onTap;
  Color? bttxtColor;
  Color? bgColor;
  double? width;
  double? height;

  AppButton1(
      {Key? key,
        required this.btnText,
        this.onTap,
        this.bttxtColor,
        this.width,
        this.height,
        this.bgColor})
      : super(key: key);

  @override
  State<AppButton1> createState() => _AppButton1State();
}

class _AppButton1State extends State<AppButton1> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: textFieldBorderColor),
            color:  widget.bgColor ?? primaryColor,
            borderRadius: BorderRadius.circular(16)),
        height: 48,
        width: widget.width ?? double.infinity,
        child: Center(
            child: FittedBox(
              child: AppText1(
                text: widget.btnText,
                size: 16,
                txtColor: blk,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontFamily: '',
              ),
            )),
      ),
    );
  }
}






class AppButton2 extends StatefulWidget {
  final String btnText;
  Function? onTap;
  Color? bttxtColor;
  Color? bgColor;
  Color? bdrColor;
  double? width;
  double? height;

  AppButton2(
      {Key? key,
        required this.btnText,
        this.onTap,
        this.bttxtColor,
        this.width,
        this.height,
        this. bdrColor,
        this.bgColor})
      : super(key: key);

  @override
  State<AppButton2> createState() => _AppButton2State();
}

class _AppButton2State extends State<AppButton2> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color:widget.bdrColor??textFieldBorderColor),
            color:  widget.bgColor ?? primaryColor,
            borderRadius: BorderRadius.circular(16)),
        height:widget.height,
        width: widget.width ?? double.infinity,
        child: Center(
            child: FittedBox(
              child: AppText1(
                text: widget.btnText,
                size: 16,
                txtColor:widget.bttxtColor?? blk,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontFamily: '',
              ),
            )),
      ),
    );
  }
}