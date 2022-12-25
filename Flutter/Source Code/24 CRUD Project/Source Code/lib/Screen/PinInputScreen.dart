import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/Style/Style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinInputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("PIN Varification", style: Head1Text(colorDarkBlue)),
                SizedBox(height: 10),
                Text("A 4 digit pin has been send to your mobile number", style: Head6Text(colorLightGray)),
                SizedBox(height: 20),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  pinTheme: AppOTPStyle(),
                  animationType: AnimationType.fade,
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v) {
                  },
                  onChanged: (value) {

                  }
                ),

                Container(child: ElevatedButton(
                  style: AppButtonStyle(),
                  child: SuccessButtonChild('Verify'),
                  onPressed: (){

                  },
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
