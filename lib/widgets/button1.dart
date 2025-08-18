import 'package:calculator/constant/color.dart';
import 'package:flutter/material.dart';

class button1 extends StatelessWidget {
  const button1({
    super.key,
    required this.label,
    this.textcolor = const Color.fromARGB(255, 255, 255, 255),
    this.ontap,
  });
  final String label;
  final Color textcolor;
  final void Function(String)? ontap ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

        if(ontap !=null){
          ontap!(label);
        }
        // TODO:ontap
      },
      child: Material(
        elevation: 3,
        color: AppColor.secondarycolor2,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          backgroundColor: AppColor.secondarycolor2,
          radius: 36,
          child: Text(
            label,
            style: TextStyle(
              color: textcolor,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
