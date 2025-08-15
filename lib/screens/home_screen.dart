


import 'package:flutter/material.dart';
import 'package:calculator/widgets/textfield.dart';
import 'package:calculator/constant/color.dart';
// import 'package:calculator/widgets/button1.dart';
import 'package:calculator/screens/widget_data.dart';


class HomeScreen extends StatelessWidget {
 const HomeScreen({super.key});

@override
  Widget build(BuildContext context) {
    final padding1=EdgeInsets.symmetric(horizontal: 20,vertical: 30);
    final decoration= BoxDecoration(
              color: AppColor.primarycolor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))
            );
    
  
  return  Scaffold(
        appBar: AppBar(
          title: Text('Calculator App'),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body:  Column(
          children: [
            customwidet(),
            const Spacer(),
          Container(
            height :MediaQuery.sizeOf(context).height*0.6,
            width: double.infinity,
            padding: padding1,
            decoration: decoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List<Widget>.generate(4, (index) => buttonlist[index])
                    
                  ,
                ),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List<Widget>.generate(4, (index) => buttonlist[index+4])
                    
                  ,
                ),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List<Widget>.generate(4, (index) => buttonlist[index+8])
                    
                  ,
                ),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List<Widget>.generate(4, (index) => buttonlist[index+12])
                    
                  ,
                )
              ],
            ),

            
            )
              
            
          
          ],
        ),

      );
}
  }
  