import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';

class AddPhotoID extends StatefulWidget {
  const AddPhotoID({Key? key}) : super(key: key);

  @override
  State<AddPhotoID> createState() => _AddPhotoIDState();
}

class _AddPhotoIDState extends State<AddPhotoID> {
  bool isVisible = false;
  String dropdownvalue = 'dropdownvalue';
  List<String> items = [
    'Document 1',
    'Document 3',
    'Document 3',
    'Document 4',
    'Document 5',
  ];


  DateTime? selectedDate;
  void presentDatePicker() {
    showDatePicker(
      initialEntryMode: DatePickerEntryMode.calendar,

        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return ;
      }
      setState(() {
        selectedDate = pickedDate;
      });
    });
  }
@override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
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
            text: "Add Photo ID",
            size: 14.0,
            txtColor: textBlack,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Space.height(24),
                    AppText1(
                      text: "Govt issued photo ID",
                      size: 16.0,
                      txtColor: blk,
                      fontWeight: FontWeight.w500,
                    ),
                    Space.height(24),
                     Container(
                      //height:MySize.size48 ,
                      decoration: BoxDecoration(
                        border: Border.all(color: textFieldBorderColor),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00), vertical: MySize.getScaledSizeWidth(8.00)),
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
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(16.00), vertical: MySize.getScaledSizeWidth(25.00)),
                        child: InkWell(
                          onTap: () async{
                            FilePickerResult? result = await FilePicker.platform.pickFiles(
                             // type: FileType.custom,
                             // allowedExtensions: ['jpg', 'pdf', 'doc'],
                            );
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
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
            child: AppButton(
                btnText: "Submit",
                bttxtColor: primaryWhite,
                bgColor: primaryColor,
                onTap: () {
                  presentDatePicker();

                }),
          ),
          Space.height(24),
        ],
      ),
    );
  }

}

/*class CommonDropDown extends StatelessWidget {
  final String? title;
  final List<String>? itemList;
  final String? dropDownValue;
  final String? validationMessage;
  final String? hintText;
  final double? topPadding;
  final Color? fillColor;
  final bool isTransparentColor;
  final bool needValidation;
  final String? Function(String?)? validator;

  final void Function(String?)? onChange;

  const CommonDropDown({
    Key? key,
    this.title,
    this.itemList,
    this.dropDownValue,
    this.onChange,
    this.validator,
    this.validationMessage,
    this.topPadding,
    this.hintText,
    this.fillColor,
    this.isTransparentColor = false,
    this.needValidation = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: topPadding ?? 0),
        if (title != null)
          AppText1(
            text: "$title",
            size: 14.0,
            txtColor: blk,
            fontWeight: FontWeight.w400,
          ),
        if (title != null) const SizedBox(height: 10),
        DropdownButtonFormField(
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 13,
            color: blk,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: fillColor ?? primaryWhite,
            hintText: hintText,
            contentPadding: const EdgeInsets.only(top: 12, bottom: 12, right: 20, left: 20),
            border: OutlineInputBorder(borderSide: BorderSide(color: isTransparentColor ? blk : blk), borderRadius: BorderRadius.circular(8)),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: isTransparentColor ? blk : blk), borderRadius: BorderRadius.circular(8)),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: isTransparentColor ? blk : blk), borderRadius: BorderRadius.circular(8)),
            errorBorder: OutlineInputBorder(borderSide: BorderSide(color: isTransparentColor ? blk : blk), borderRadius: BorderRadius.circular(8)),
          ),
          validator: needValidation == true
              ? (v) {
                  if (v == null) {
                    return "$validationMessage is required";
                  }
                  return null;
                }
              : null,
          isDense: true,
          onChanged: onChange,
          value: dropDownValue,
          items: itemList!.map((selectedType) {
            return DropdownMenuItem(
              value: selectedType,
              child: Text(
                selectedType,
                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: blk),
              ),
            );
          }).toList(),
          isExpanded: true,
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: blk,
          ),
        ),
      ],
    );
  }
}*/
