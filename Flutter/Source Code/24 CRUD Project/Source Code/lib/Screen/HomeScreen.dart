import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/Components/AppBar.dart';
import 'package:main/Screen/ButtonsScreen.dart';
import 'package:main/Screen/EmailInput.dart';
import 'package:main/Screen/LoginScreen.dart';
import 'package:main/Screen/PhoneNumberScreen.dart';
import 'package:main/Screen/SetPassScreen.dart';
import 'package:main/Screen/SplashScreen.dart';
import 'package:main/Style/Style.dart';

import 'PinInputScreen.dart';
import 'ProductCRUDProject/ProductGridViewScreen.dart';

class HomeScreen extends StatelessWidget {


  onNavigate(context,screen){
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context)=>screen
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScreenAppBar('Learn With Rabbil'),
      body: Stack(
        children: [
          ScreenBackground(context),
          Center(
            child: SingleChildScrollView(
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child:  ElevatedButton( style: AppButtonStyle(), onPressed: (){
                      onNavigate(context, ButtonsScreen());
                    }, child: SuccessButtonChild("Button")),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child:  ElevatedButton( style: AppButtonStyle(), onPressed: (){
                      onNavigate(context, LoginScreen());
                    }, child: SuccessButtonChild("Login")),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child:  ElevatedButton( style: AppButtonStyle(), onPressed: (){
                      onNavigate(context, PinInputScreen());
                    }, child: SuccessButtonChild("Pin Input")),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child:  ElevatedButton( style: AppButtonStyle(), onPressed: (){
                      onNavigate(context, PhoneNumberScreen());
                    }, child: SuccessButtonChild("Phone Input")),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child:  ElevatedButton( style: AppButtonStyle(), onPressed: (){
                      onNavigate(context, SetPassScreen());
                    }, child: SuccessButtonChild("Set Password")),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child:  ElevatedButton( style: AppButtonStyle(), onPressed: (){
                      onNavigate(context, SplashScreen());
                    }, child: SuccessButtonChild("Splash ")),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child:  ElevatedButton( style: AppButtonStyle(), onPressed: (){
                      onNavigate(context, EmailInput());
                    }, child: SuccessButtonChild("Email Input ")),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child:  ElevatedButton( style: AppButtonStyle(), onPressed: (){
                      onNavigate(context, ProductGridViewScreen());
                    }, child: SuccessButtonChild("Product CRUD Project")),
                  ),
                ],
              ),
            )
          ),
        ],
      )
    );
  }
}
