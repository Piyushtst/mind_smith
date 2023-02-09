import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/profile/my_order_screen.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/textfield.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
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
            text: "Add Address",
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Space.height(24),
                    AppText1(
                      text: "Address Line 1",
                      size: 12.0,
                      txtColor: greyTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                    Space.height(6),
                    AppTextField(
                      hintText: "Address Line 1",
                      maxLines: 1,
                      tcPadding: 16,
                      bcPadding: 16,
                    ),
                    Space.height(16),
                    AppText1(
                      text: "Address Line 2",
                      size: 12.0,
                      txtColor: greyTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                    Space.height(6),
                    AppTextField(
                      hintText: "Address Line 2",
                      maxLines: 1,
                      tcPadding: 16,
                      bcPadding: 16,
                    ),
                    Space.height(16),
                    AppText1(
                      text: "Country",
                      size: 12.0,
                      txtColor: greyTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                    Space.height(6),
                    AppTextField(
                      hintText: "Country",
                      maxLines: 1,
                      tcPadding: 16,
                      bcPadding: 16,
                    ),
                    Space.height(16),
                    AppText1(
                      text: "Pin Code",
                      size: 12.0,
                      txtColor: greyTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                    Space.height(6),
                    AppTextField(
                      hintText: "Pin Code",
                      maxLines: 1,
                      tcPadding: 16,
                      bcPadding: 16,

                    ),
                  ],
                ),
              ),
            ),
            AppButton(
                btnText: "Submit",
                bttxtColor: primaryWhite,
                bgColor: primaryColor,
                onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const MyOrderScreen()));
                }),
            Space.height(24),
          ],
        ),
      ),
    );
  }
}
