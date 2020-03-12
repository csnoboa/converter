import 'package:flutter/material.dart';
import 'package:converter/category_route.dart';



class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: CategoryRoute(),
    );
  }
}


void main() {
  runApp(
    UnitConverterApp()
  ); //runApp
}
