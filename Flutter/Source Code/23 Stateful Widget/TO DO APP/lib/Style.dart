
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

SizedBox SizedBox50(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child:Container(alignment:Alignment.center,padding: EdgeInsets.all(8),child: child,),
  );
}


ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
      padding: EdgeInsets.all(16),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))
      )
  );
}