import 'package:flutter/material.dart';

import '../../style/style.dart';
class setPasswordScreen extends StatefulWidget {
  const setPasswordScreen({Key? key}) : super(key: key);

  @override
  State<setPasswordScreen> createState() => _setPasswordScreenState();
}

class _setPasswordScreenState extends State<setPasswordScreen> {
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
                Text("Set Password", style: Head1Text(colorDarkBlue)),
                SizedBox(height: 1),
                Text("Minimum length password 8 character with Latter and number combination ", style: Head6Text(colorLightGray)),
                SizedBox(height: 20),
                TextFormField(decoration: AppInputDecoration("Password"),),
                SizedBox(height: 20),
                TextFormField(decoration: AppInputDecoration("Confirm Password"),),
                SizedBox(height: 20),
                Container(child: ElevatedButton(
                  style: AppButtonStyle(),
                  child: SuccessButtonChild('Confirm'),
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
