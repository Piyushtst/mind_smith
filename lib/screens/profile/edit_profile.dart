import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';
import 'package:mind_smith/widgets/textfield.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String dropdownvalue = 'dropdownvalue';
  List<String> items = [
    'Document 1',
    'Document 3',
    'Document 3',
    'Document 4',
    'Document 5',
  ];
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
            text: "Edit Profile",
            size: 14.0,
            txtColor: textBlack,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Space.height(24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: const AssetImage("assets/images/png/profilescreen.png"),
                    fit: BoxFit.fill,
                    height: MySize.size90,
                    width: MySize.size90,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    //  width: double.infinity,
                    decoration: BoxDecoration(
                      color: primaryWhite,
                      border: Border.all(color: textFieldBorderColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(12.00),vertical: MySize.getScaledSizeHeight(10.00)),
                      child: Row(
                        children: [
                          Image(
                            image: const AssetImage("assets/images/png/pen2.png"),
                            fit: BoxFit.fill,
                            height: MySize.size18,
                            width: MySize.size18,
                          ),
                          SizedBox(width: MySize.size10,),
                          AppText1(
                            text: "Update Image",
                            size: 14.0,
                            txtColor: blk,
                            fontWeight: FontWeight.w500,
                          ),


                        ],
                      ),
                    ),

                  ),
                ],
              ),
              Space.height(24),
              AppText1(
                text: "Personal Details",
                size: 16.0,
                txtColor: blk,
                fontWeight: FontWeight.w500,
              ),
              Space.height(16),
              AppText1(
                text: "Name",
                size: 12.0,
                txtColor: greyTextColor,
                fontWeight: FontWeight.w500,
              ),
              Space.height(6),
              AppTextField(
                hintText: "Name",
                maxLines: 1,
                tcPadding: 16,
                bcPadding: 16,
              ),
              Space.height(16),
              AppText1(
                text: "Email",
                size: 12.0,
                txtColor: greyTextColor,
                fontWeight: FontWeight.w500,
              ),
              Space.height(6),
              AppTextField(
                hintText: "Email",
                maxLines: 1,
                tcPadding: 16,
                bcPadding: 16,
              ),
              Space.height(16),
              AppText1(
                text: "Phone Number",
                size: 12.0,
                txtColor: greyTextColor,
                fontWeight: FontWeight.w500,
              ),
              Space.height(6),
              AppTextField(
                hintText: "Phone",
                maxLines: 1,
                tcPadding: 16,
                bcPadding: 16,
              ),
              Space.height(16),
              AppText1(
                text: "Gender",
                size: 12.0,
                txtColor: greyTextColor,
                fontWeight: FontWeight.w500,
              ),
              Space.height(6),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryWhite,
                        border: Border.all(color: textFieldBorderColor),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
                        child: Center(
                          child: AppText1(
                            text: "Male",
                            size: 14.0,
                            txtColor: blk,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryWhite,
                        border: Border.all(color: textFieldBorderColor),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
                        child: Center(
                          child: AppText1(
                            text: "Female",
                            size: 14.0,
                            txtColor: blk,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryWhite,
                        border: Border.all(color: textFieldBorderColor),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(16.00)),
                        child: Center(
                          child: AppText1(
                            text: "Other",
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
              Space.height(32),
              AppText1(
                text: "Govt issued photo ID",
                size: 16.0,
                txtColor: blk,
                fontWeight: FontWeight.w500,
              ),
              Space.height(16),
              Container(
                //height:MySize.size48 ,
                decoration: BoxDecoration(
                  border: Border.all(color: textFieldBorderColor),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00), vertical: MySize.getScaledSizeWidth(0.00)),
                  child: DropdownButton(
                    borderRadius: BorderRadius.circular(10),
                    underline: Container(),
                    hint: AppText1(
                      text: "Select Document",
                      size: 14.0,
                      txtColor: blk,
                      fontWeight: FontWeight.w400,
                    ),
                    isExpanded: true,
                    //value:dropdownvalue ,
                    icon:  Icon(Icons.keyboard_arrow_down_outlined,size: MySize.size30),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),

                ),
              ),
              Space.height(16),
              Container(
                //height:MySize.size48 ,
                decoration: BoxDecoration(
                  border: Border.all(color: textFieldBorderColor),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00), vertical: MySize.getScaledSizeWidth(18.00)),
                  child: InkWell(
                    onTap: () {
                    //  FilePickerResult? result = await FilePicker.platform.pickFiles(
                        // type: FileType.custom,
                        // allowedExtensions: ['jpg', 'pdf', 'doc'],
                     // );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText1(
                          text: "Choose Document",
                          size: 14.0,
                          txtColor: blk,
                          fontWeight: FontWeight.w400,
                        ), AppText1(
                          text: "Upload",
                          size: 14.0,
                          txtColor: greyTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),

                ),
              ),
              Space.height(6),
              Align(
                alignment: Alignment.bottomRight,
                child: AppText1(
                  text: "Upload PNG, JPEG or pdf. Max sze 5 mb.",
                  size: 12.0,
                  txtColor: greyShade,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Space.height(32),
              AppText1(
                text: "Emergency contact",
                size: 16.0,
                txtColor: blk,
                fontWeight: FontWeight.w500,
              ),
              Space.height(16),
              AppText1(
                text: "Name",
                size: 12.0,
                txtColor: greyTextColor,
                fontWeight: FontWeight.w500,
              ),
              Space.height(6),
              AppTextField(
                hintText: "Name",
                maxLines: 1,
                tcPadding: 16,
                bcPadding: 16,
              ),
              Space.height(16),
              AppText1(
                text: "Phone Number",
                size: 12.0,
                txtColor: greyTextColor,
                fontWeight: FontWeight.w500,
              ),
              Space.height(6),
              AppTextField(
                hintText: "Phone Number",
                maxLines: 1,
                tcPadding: 16,
                bcPadding: 16,
              ),
              Space.height(16),
              AppText1(
                text: "Relation",
                size: 12.0,
                txtColor: greyTextColor,
                fontWeight: FontWeight.w500,
              ),
              Space.height(6),
              Container(
                //height:MySize.size48 ,
                decoration: BoxDecoration(
                  border: Border.all(color: textFieldBorderColor),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00), vertical: MySize.getScaledSizeWidth(0.00)),
                  child: DropdownButton(
                    borderRadius: BorderRadius.circular(10),
                    underline: Container(),
                    hint: AppText1(
                      text: "Select Document",
                      size: 14.0,
                      txtColor: blk,
                      fontWeight: FontWeight.w400,
                    ),
                    isExpanded: true,
                    //value:dropdownvalue ,
                    icon:  Icon(Icons.keyboard_arrow_down_outlined,size: MySize.size30),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),

                ),
              ),
              Space.height(40),
            ],
          ),
        ),
      ),
    );
  }
}
