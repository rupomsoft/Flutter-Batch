import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/Style/Style.dart';

class PhoneNumberScreen extends StatelessWidget {

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
                Text("Your Phone Number", style: Head1Text(colorDarkBlue)),
                SizedBox(height: 2),
                Text("Enter 11 digit phone number", style: Head6Text(colorLightGray)),
                SizedBox(height: 20),
                TextFormField(decoration: AppInputDecoration("Phone"),),
                SizedBox(height: 20),
                Container(child: ElevatedButton(
                  style: AppButtonStyle(),
                  child: SuccessButtonChild('Next'),
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
