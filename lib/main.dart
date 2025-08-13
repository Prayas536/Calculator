

import 'package:flutter/material.dart';
// import 'package:calculator/constant/color.dart';
// import 'package:calculator/widgets/textfield.dart';
import 'package:calculator/screens/home_screen.dart';

void main(){
  runApp(MyCalculator());
}

class MyCalculator extends StatelessWidget{
  const MyCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomeScreen()
    );
  }
}
