import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:main/Style/Style.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Center(
              child: SvgPicture.asset("assets/images/splash-logo.svg",alignment: Alignment.center,)
            ),
          )
        ],
      ),
    );
  }
}
