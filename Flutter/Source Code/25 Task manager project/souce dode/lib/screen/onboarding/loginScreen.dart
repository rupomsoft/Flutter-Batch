import 'package:flutter/material.dart';

import '../../style/style.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);
  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
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
                Text("Get Started With", style: Head1Text(colorDarkBlue)),
                SizedBox(height: 1),
                Text("Learn with rabbil hasan", style: Head6Text(colorLightGray)),
                SizedBox(height: 20),
                TextFormField(decoration: AppInputDecoration("Email Address"),),
                SizedBox(height: 20),
                TextFormField(decoration: AppInputDecoration("Password"),),
                SizedBox(height: 20),
                Container(child: ElevatedButton(
                  style: AppButtonStyle(),
                  child: SuccessButtonChild('Login'),
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
