import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle HeadLine(context){

  var width=  MediaQuery.of(context).size.width;
  if(width<700){
    // Mobile
    return TextStyle(
      color:Colors.black,
      fontSize: 34,
    );
  }
  else{
    // Dekstop/ Web
    return TextStyle(
      color:Colors.green,
      fontSize: 65,
    );
  }

}