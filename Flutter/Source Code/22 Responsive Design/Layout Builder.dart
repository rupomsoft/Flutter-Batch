import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


main(){
  runApp(const MyApp()); // Application
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: HomeActivity()
    );
  }
}



class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text( "Home"),
      ),
      body:LayoutBuilder(
        builder: (BuildContext context,BoxConstraints constraints){
          if(constraints.maxWidth>600){
            return Container(height: 400, width: 400,color: Colors.green,);
          }
          else{
            return Container(height: 200, width: 200,color: Colors.red,);
          }
        }
      )

    );
  }
}

