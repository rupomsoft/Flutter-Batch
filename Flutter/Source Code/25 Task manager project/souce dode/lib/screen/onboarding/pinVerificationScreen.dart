import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../api/apiClient.dart';
import '../../style/style.dart';
import '../../utility/utility.dart';

class pinVerificationScreen extends StatefulWidget {
  const pinVerificationScreen({Key? key}) : super(key: key);
  @override
  State<pinVerificationScreen> createState() => _pinVerificationScreenState();
}

class _pinVerificationScreenState extends State<pinVerificationScreen> {

  Map<String,String> FormValues={"otp":""};
  bool Loading=false;

  InputOnChange(MapKey, Textvalue){
    setState(() {
      FormValues.update(MapKey, (value) => Textvalue);
    });
  }

  FormOnSubmit() async{
    if(FormValues['otp']!.length!=6){
      ErrorToast('PIN Required !');
    }
    else{
      setState(() {Loading=true;});
      String? emailAddress=await ReadUserData('EmailVerification');
      bool res=await VerifyOTPRequest(emailAddress,FormValues['otp']);
      if(res==true){
        Navigator.pushNamed(context, "/setPassword");
      }
      else{
        setState(() {Loading=false;});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            alignment: Alignment.center,
            child: Loading?(Center(child: CircularProgressIndicator())):(SingleChildScrollView(
              padding: EdgeInsets.all(30),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("PIN Varification", style: Head1Text(colorDarkBlue)),
                  SizedBox(height: 10),
                  Text("A 6 digit pin has been send to your mobile number", style: Head6Text(colorLightGray)),
                  SizedBox(height: 20),
                  PinCodeTextField(
                      appContext: context,
                      length: 6,
                      pinTheme: AppOTPStyle(),
                      animationType: AnimationType.fade,
                      animationDuration: Duration(milliseconds: 300),
                      enableActiveFill: true,
                      onCompleted: (v) {

                      },
                      onChanged: (value) {
                        InputOnChange("otp",value);
                      }
                  ),
                  Container(child: ElevatedButton(
                    style: AppButtonStyle(),
                    child: SuccessButtonChild('Verify'),
                    onPressed: (){
                      FormOnSubmit();
                    },
                  ),)
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
