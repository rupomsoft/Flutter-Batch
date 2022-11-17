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
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.red,
          strokeWidth: 10,
          backgroundColor: Colors.greenAccent,
        )
      )
    );

  }
}

