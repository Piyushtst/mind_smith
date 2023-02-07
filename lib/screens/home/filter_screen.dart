import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/widgets/app_button.dart';
import 'package:mind_smith/widgets/app_text.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double _lowerValue = 0.2;
  double _upperValue = 0.8;
  double _rating = 3.0;
  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        leadingWidth: MySize.size90,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(
            left: MySize.getScaledSizeWidth(24.00),
          ),
          child: Center(
            child: AppText1(
              text: "Filter:",
              size: 14.0,
              txtColor: blk,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: MySize.getScaledSizeWidth(24.00)),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: Image(
                  image: const AssetImage("assets/images/png/multiply.png"),
                  fit: BoxFit.contain,
                  height: MySize.size24,
                  width: MySize.size24,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(24.00)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Space.height(24),
              AppText1(
                text: "Experience",
                size: 16.0,
                txtColor: blk,
                fontWeight: FontWeight.w500,
              ),
              Space.height(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText1(
                    text: "0Y",
                    size: 14.0,
                    txtColor: blk,
                    fontWeight: FontWeight.w500,
                  ),AppText1(
                    text: "+10 Y",
                    size: 14.0,
                    txtColor: blk,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                child: RangeSlider(
                  activeColor: yelowShade,
                  values: RangeValues(_lowerValue, _upperValue),
                  min: 0.0,
                  max: 1.0,
                  divisions: 10,
                  labels: const RangeLabels('Lower', 'Upper'),
                  onChanged: (newValues) {
                    setState(() {
                      _lowerValue = newValues.start;
                      _upperValue = newValues.end;
                    });
                  },
                ),
              ),
              Space.height(10),
              Divider(color: textFieldBorderColor,height: 1,thickness: 1),
              Space.height(24),
              AppText1(
                text: "Specialisation ",
                size: 16.0,
                txtColor: blk,
                fontWeight: FontWeight.w500,
              ),
              Space.height(12),
              Wrap(
                spacing: 12,runSpacing: 10,

               children: [
                 Container(
                   decoration: BoxDecoration(
                     border: Border.all(color: greyColor),
                     borderRadius: BorderRadius.circular(8),
                   ),
                   child:  Padding(
                     padding:  EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(14.00),vertical:MySize.getScaledSizeWidth(6.00) ),
                     child: AppText1(
                       text: "Gynaecologist",
                       size: 14.0,
                       txtColor: greyColor,
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                 ),
                 Container(
                   decoration: BoxDecoration(
                     color: yelowShade,
                     //border: Border.all(color: greyColor),
                     borderRadius: BorderRadius.circular(8),
                   ),
                   child:  Padding(
                     padding:  EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(14.00),vertical:MySize.getScaledSizeWidth(6.00) ),
                     child: AppText1(
                       text: "Neurologist ",
                       size: 14.0,
                       txtColor: greyColor,
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                 ),
                 Container(
                   decoration: BoxDecoration(
                     border: Border.all(color: greyColor),
                     borderRadius: BorderRadius.circular(8),
                   ),
                   child:  Padding(
                     padding:  EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(14.00),vertical:MySize.getScaledSizeWidth(6.00) ),
                     child: AppText1(
                       text: "Ophthalmologist",
                       size: 14.0,
                       txtColor: greyColor,
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                 ),
                 Container(
                   decoration: BoxDecoration(
                     border: Border.all(color: greyColor),
                     borderRadius: BorderRadius.circular(8),
                   ),
                   child:  Padding(
                     padding:  EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(14.00),vertical:MySize.getScaledSizeWidth(6.00) ),
                     child: AppText1(
                       text: "Gynaecologist",
                       size: 14.0,
                       txtColor: greyColor,
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                 ),
                 Container(
                   decoration: BoxDecoration(
                     border: Border.all(color: greyColor),
                     borderRadius: BorderRadius.circular(8),
                   ),
                   child:  Padding(
                     padding:  EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(14.00),vertical:MySize.getScaledSizeWidth(6.00) ),
                     child: AppText1(
                       text: "Dentist",
                       size: 14.0,
                       txtColor: greyColor,
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                 ),
                 Container(
                   decoration: BoxDecoration(
                     border: Border.all(color: greyColor),
                     borderRadius: BorderRadius.circular(8),
                   ),
                   child:  Padding(
                     padding:  EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(14.00),vertical:MySize.getScaledSizeWidth(6.00) ),
                     child: AppText1(
                       text: "Cardiologist",
                       size: 14.0,
                       txtColor: greyColor,
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                 ),
                 Container(
                   decoration: BoxDecoration(
                     border: Border.all(color: greyColor),
                     borderRadius: BorderRadius.circular(8),
                   ),
                   child:  Padding(
                     padding:  EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(14.00),vertical:MySize.getScaledSizeWidth(6.00) ),
                     child: AppText1(
                       text: "Orthologist",
                       size: 14.0,
                       txtColor: greyColor,
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                 ),
               ],
              ),
              Space.height(24),
              Divider(color: textFieldBorderColor,height: 1,thickness: 1),
              Space.height(24),
              AppText1(
                text: "Availability ",
                size: 16.0,
                txtColor: blk,
                fontWeight: FontWeight.w500,
              ),
              Space.height(12),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: greyColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child:  Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(14.00),vertical:MySize.getScaledSizeWidth(6.00) ),
                  child: AppText1(
                    text: "Show available only",
                    size: 14.0,
                    txtColor: greyColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Space.height(24),
              Divider(color: textFieldBorderColor,height: 1,thickness: 1),
              Space.height(24),
              AppText1(
                text: "Min Ratings",
                size: 16.0,
                txtColor: blk,
                fontWeight: FontWeight.w500,
              ),
              Space.height(24),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) =>  Icon(
              Icons.star_outline,size: MySize.size26,
              color:starColor,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
              Space.height(27),
              Divider(color: textFieldBorderColor,height: 1,thickness: 1),
              Space.height(24),
              AppText1(
                text: "Charges per 15 minute",
                size: 16.0,
                txtColor: blk,
                fontWeight: FontWeight.w500,
              ),
              Space.height(24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText1(
                    text: "\$1",
                    size: 14.0,
                    txtColor: blk,
                    fontWeight: FontWeight.w500,
                  ),AppText1(
                    text: "\$200",
                    size: 14.0,
                    txtColor: blk,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                child: RangeSlider(
                  activeColor: yelowShade,
                  values: RangeValues(_lowerValue, _upperValue),
                  min: 0.0,
                  max: 1.0,
                  divisions: 10,
                  labels: RangeLabels('Lower', 'Upper'),
                  onChanged: (newValues) {
                    setState(() {
                      _lowerValue = newValues.start;
                      _upperValue = newValues.end;
                    });
                  },
                ),
              ),
              Space.height(30),
              Row(
                children: [
                  Expanded(
                    child: AppButton1(
                        btnText: "Clear",
                        bttxtColor: textBlack,
                        bgColor: Colors.white,
                        onTap: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => const NavScreen()));
                        }),
                  ),
                  const SizedBox(width:16 ),
                  Expanded(
                    child: AppButton(
                        btnText: "Apply",
                        bttxtColor: Colors.black,
                        bgColor: primaryColor,
                        onTap: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => const NavScreen()));
                        }),
                  ),
                ],
              ),
              Space.height(16),
            ],
          ),
        ),
      ),
    );
  }
}
