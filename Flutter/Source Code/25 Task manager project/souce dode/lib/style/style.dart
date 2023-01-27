import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorDark = Color.fromRGBO(136, 28, 32, 1);
const colorGreen=Color.fromRGBO(33, 191, 115, 1);
const colorBlue=Color.fromRGBO(52, 152, 219,1.0);
const colorOrange=Color.fromRGBO(230, 126, 34,1.0);
const colorWhite=Color.fromRGBO(255, 255, 255,1.0);
const colorDarkBlue=Color.fromRGBO(44, 62, 80,1.0);
const colorLightGray=Color.fromRGBO(135, 142, 150, 1.0);
const colorLight=Color.fromRGBO(211, 211, 211, 1.0);


SizedBox ItemSizeBox(child){
  return SizedBox(
    width: double.infinity,
    child: Container(
      padding: EdgeInsets.all(10),
      child: child,
    ),
  );
}



PinTheme AppOTPStyle(){
  return  PinTheme(
    inactiveColor: colorLight,
    inactiveFillColor: colorWhite,
    selectedColor: colorGreen,
    activeColor: colorWhite,
    selectedFillColor: colorGreen,
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(5),
    fieldHeight: 50,
    borderWidth: 0.5,
    fieldWidth: 45,
    activeFillColor: Colors.white,
  );
}


TextStyle Head1Text(textColor){
  return TextStyle(
    color: textColor,
    fontSize: 28,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w700,
  );
}

TextStyle Head6Text(textColor){
  return TextStyle(
      color: textColor,
      fontSize: 16,
      fontFamily: 'poppins',
      fontWeight: FontWeight.w400
  );
}
TextStyle Head7Text(textColor){
  return TextStyle(
      color: textColor,
      fontSize: 13,
      fontFamily: 'poppins',
      fontWeight: FontWeight.w400
  );
}

TextStyle Head9Text(textColor){
  return TextStyle(
      color: textColor,
      fontSize: 9,
      fontFamily: 'poppins',
      fontWeight: FontWeight.w500
  );
}

InputDecoration AppInputDecoration(label){
  return InputDecoration(
      focusedBorder:  const OutlineInputBorder(
        borderSide: const BorderSide(color: colorGreen, width: 1),
      ),
      fillColor: colorWhite,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
      enabledBorder: const OutlineInputBorder(
        borderSide: const BorderSide(color: colorWhite, width: 0.0),
      ),
      border: OutlineInputBorder(),
      labelText: label
  );
}


DecoratedBox AppDropDownStyle(child){
  return DecoratedBox(
      decoration: BoxDecoration(color:Colors.white, border: Border.all(color: Colors.white, width:1), borderRadius: BorderRadius.circular(4),),
      child:Padding(
          padding: EdgeInsets.only(left:30, right:30),
          child:child
      )
  );
}


SvgPicture ScreenBackground(context){
  return SvgPicture.asset(
    'assets/images/screen-back.svg',
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}


ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
      elevation: 1,
      padding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
  );
}

TextStyle ButtonTextStyle(){
  return TextStyle(
      fontSize: 14,
      fontFamily: 'poppins',
      fontWeight: FontWeight.w400
  );
}



Ink SuccessButtonChild(String ButtonText){
  return  Ink(
    decoration: BoxDecoration(color: colorGreen, borderRadius: BorderRadius.circular(6)),
    child: Container(
      height: 45,
      alignment: Alignment.center,
      child:Text(ButtonText,style: ButtonTextStyle(),),
    ),
  );
}

Container StatusChild(statusText,statusColor){
  return  Container(
    alignment: Alignment.center,
    child:Text(statusText,style: TextStyle(color: colorWhite,fontSize: 10,fontWeight: FontWeight.w400)),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: statusColor,
    ),
    height: 20,
    width: 50,
  );
}



void SuccessToast(msg){
  Fluttertoast.showToast(
      msg: msg,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      toastLength: Toast.LENGTH_SHORT,
      backgroundColor: colorGreen,
      textColor: colorWhite,
      fontSize: 16.0
  );
}


void ErrorToast(msg){
  Fluttertoast.showToast(
      msg: msg,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      toastLength: Toast.LENGTH_SHORT,
      backgroundColor: colorRed,
      textColor: colorWhite,
      fontSize: 16.0
  );
}