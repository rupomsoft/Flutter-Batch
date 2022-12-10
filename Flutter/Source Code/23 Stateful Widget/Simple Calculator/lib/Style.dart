
import 'package:flutter/material.dart';

InputDecoration AppInputStyle(label){
  return InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
      fillColor: Colors.black12,
      border:OutlineInputBorder(),
      labelText: label
  );
}

TextStyle HeaTextStyle(){
  return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400
  );
}

SizedBox SizedBox100(child){
  return SizedBox(
    height: 100,
    width: double.infinity,
    child:child,
  );
}


ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
      padding: EdgeInsets.all(20),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))
      )
  );
}