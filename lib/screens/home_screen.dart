


import 'package:flutter/material.dart';
import 'package:calculator/widgets/textfield.dart';
import 'package:calculator/constant/color.dart';
import 'package:calculator/widgets/button1.dart';
import 'package:math_expressions/math_expressions.dart';
// import 'package:calculator/screens/widget_data.dart';


class HomeScreen extends StatefulWidget {
 const HomeScreen({super.key}
 );
 
//  final int input;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

   String _input="";
   final TextEditingController _controller=TextEditingController(); 
   @override
  
    void dispose (){
      _controller.dispose();
      super.dispose();
    }
  

  void _onbuttontapped(String buttontext){
    setState(() {
      if(buttontext=='AC' || buttontext=='C'){
        _input="";

      } 
      else if(buttontext=="="){
        _calculateresult();
      }
      else {_input+=buttontext;
      }
      
    
    _controller.text=_input;
  }
    
    );
  }
  void _calculateresult(){

    setState(() {
      try{
        String final_input=_input.replaceAll("X", "*");
        Parser p=Parser();
        Expression exp =p.parse(final_input);
        ContextModel cm =ContextModel();
        double eval =exp.evaluate(EvaluationType.REAL, cm);
        _input=eval.toString();
      }
      catch(e){
        _input="Error";
      }
      _controller.text=_input;
    });
// implement it
  }
@override
  Widget build(BuildContext context) {
    final padding1=EdgeInsets.symmetric(horizontal: 20,vertical: 30);
    final decoration= BoxDecoration(
              color: AppColor.primarycolor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))
            );

            List<Widget> buttonlist=[
                    button1(label: "C",textcolor:AppColor.secondarycolor ,ontap:_onbuttontapped ,),
                    button1(label: "/",textcolor: AppColor.secondarycolor,ontap: _onbuttontapped,),
                    button1(label: "X",textcolor: AppColor.secondarycolor,ontap: _onbuttontapped),
                    button1(label: "AC",textcolor: AppColor.secondarycolor,ontap: _onbuttontapped),
                    button1(label: "7",ontap: _onbuttontapped),
                    button1(label: "8",ontap: _onbuttontapped),
                    button1(label: "9",ontap: _onbuttontapped),
                    button1(label: "+",textcolor: AppColor.secondarycolor,ontap: _onbuttontapped),
                    button1(label: "4",ontap: _onbuttontapped),
                    button1(label: "5",ontap: _onbuttontapped),
                    button1(label: "6",ontap: _onbuttontapped),
                    button1(label: "-",textcolor: AppColor.secondarycolor,ontap: _onbuttontapped),
                    button1(label: "1",ontap: _onbuttontapped),
                    button1(label: "2",ontap: _onbuttontapped),
                    button1(label: "3",ontap: _onbuttontapped),
                    button1(label: "=",textcolor: AppColor.secondarycolor,ontap: _onbuttontapped),

  ];
  



    
  
  return  Scaffold(
        appBar: AppBar(
          title: Text('Calculator App'),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body:  Column(
          children: [
            customwidet(controller: _controller,),
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
  