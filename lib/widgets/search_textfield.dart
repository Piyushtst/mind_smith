import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: blk, fontWeight: FontWeight.w400, fontSize: 15),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Image(
            image: const AssetImage("assets/images/png/search.png"),
            height: MySize.size13,
            width: MySize.size13,
          ),
        ), //Icon(Icons.search,size: 30,color: textBlack),
        hintText: "Search for doctor",
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: textFieldBorderColor),
        ),
        focusedBorder:const OutlineInputBorder(
          borderSide: BorderSide(color: textFieldBorderColor,),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}


Widget SearcTextField2(BuildContext context) {
  return TextField(
    style: const TextStyle(color: blk, fontWeight: FontWeight.w400, fontSize: 15),
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.only(left: 14,right: 14,top: 2,bottom: 2),
      suffixIcon:Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Image(
          image: const AssetImage("assets/images/png/search.png"),
          height: MySize.size13,
          width: MySize.size13,
        ),
      ),
      hintText: "Search here",
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(18)),
        borderSide: BorderSide(color: textFieldBorderColor),
      ),
      focusedBorder:const OutlineInputBorder(
        borderSide: BorderSide(color: textFieldBorderColor,),
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
    ),
  );
}