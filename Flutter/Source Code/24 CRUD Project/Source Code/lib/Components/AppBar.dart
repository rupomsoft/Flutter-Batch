import 'package:flutter/material.dart';
import 'package:main/Style/Style.dart';

AppBar ScreenAppBar(title){
  return AppBar(
    iconTheme: IconThemeData(color: colorDarkBlue),
    elevation: 0.5,
    titleTextStyle: TextStyle(color: colorDarkBlue),
    backgroundColor: colorWhite,
    title: Text(title),
  );
}