import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/Screen/HomeScreen.dart';
import 'package:main/Style/Style.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

