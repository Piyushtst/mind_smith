// Common Dialogs
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_smith/costants/app_color.dart';


class CustomDialogs {
  void showCircularDialog(
    BuildContext context,
  ) {
    CircularDialog.showLoadingDialog(
      context,
    );
  }

  void hideCircularDialog(
    BuildContext context,
  ) {
    Navigator.pop(
      context,
    );
  }

  getDialog({
    String title = "Error",
    String desc = "",
  }) {
    return Get.defaultDialog(
      barrierDismissible: false,
      title: title,
      content: Text(
        desc,
        textAlign: TextAlign.center,
      ),
      buttonColor:greyColor,
      textConfirm: "Ok",
      confirmTextColor: Colors.white,
      onConfirm: () {
        Get.back();
      },
    );
  }

  getConfirmDialog({
    String title = "Error",
    String desc = "",
    VoidCallback? onTap,
  }) {
    return Get.defaultDialog(
      barrierDismissible: false,
      title: title,
      content: Text(
        desc,
        textAlign: TextAlign.center,
      ),
      buttonColor: greyColor,
      textConfirm: "Ok",
      confirmTextColor: Colors.white,
      onConfirm: (onTap != null)
          ? onTap
          : () {
              Get.back();
            },
    );
  }
}

class CircularDialog {
  static Future<void> showLoadingDialog(
    BuildContext context,
  ) {
    return showDialog(
      context: context,
      builder: (
        BuildContext context,
      ) {
        return WillPopScope(
          child: const Center(
            child: CircularProgressIndicator(
              color: greyColor,
            ),
          ),
          onWillPop: () async {
            return false;
          },
        );
      },
      barrierDismissible: false,
    );
  }
}
