import 'package:flutter/material.dart';
import 'package:calculator/constant/color.dart';


class customwidet extends StatelessWidget {
  const customwidet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 30),
      child: TextField(
        controller: TextEditingController(),
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: AppColor.primarycolor,
          filled: true,
          
          
        ),
        readOnly: true,
        autofocus: true,
        showCursor: true,
        style: TextStyle(
          fontSize: 40
        ),
      ),
      
      );
  }
}