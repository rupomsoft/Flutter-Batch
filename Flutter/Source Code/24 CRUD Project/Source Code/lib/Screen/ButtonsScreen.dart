import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Components/AppBar.dart';
import '../Style/Style.dart';

class ButtonsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScreenAppBar("Buttons"),
      body: Stack(
        children: [
          ScreenBackground(context),
          Center(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(30),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    ElevatedButton(onPressed: (){}, child: DangerButtonChild('Danger Button'),style:AppButtonStyle()),
                    SizedBox(height: 20),
                    ElevatedButton(onPressed: (){}, child: SuccessButtonChild('Success Button'),style:AppButtonStyle()),
                    SizedBox(height: 20),
                    ElevatedButton(onPressed: (){}, child: PrimaryButtonChild('Primary Button'),style:AppButtonStyle()),
                    SizedBox(height: 20),
                    ElevatedButton(onPressed: (){}, child: WarningButtonChild('Warning Button'),style:AppButtonStyle()),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
