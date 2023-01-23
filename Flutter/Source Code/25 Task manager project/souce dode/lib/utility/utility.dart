import 'dart:typed_data';

import 'package:shared_preferences/shared_preferences.dart';


String DefaultProfilePic="data:image/jpeg;base64,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";

Future<void> WriteUserData(UserData) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('token', UserData['token']);
  await prefs.setString('email', UserData['data']['email']);
  await prefs.setString('firstName', UserData['data']['firstName']);
  await prefs.setString('lastName',UserData['data']['lastName']);
  await prefs.setString('mobile', UserData['data']['mobile']);
  await prefs.setString('photo', UserData['data']['photo']);
}

Future<void> WriteEmailVerification(Email) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('EmailVerification', Email);
}

Future<void> WriteOTPVerification(OTP) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('OTPVerification', OTP);
}

Future<String?> ReadUserData(Key) async {
  final prefs = await SharedPreferences.getInstance();
  String? mydata= await prefs.getString(Key);
  return mydata;
}


Future<bool> RemoveToken() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear();
  return true;
}

ShowBase64Image(Base64String){
 UriData? data= Uri.parse(Base64String).data;
 Uint8List MyImage= data!.contentAsBytes();
 return MyImage;
}
