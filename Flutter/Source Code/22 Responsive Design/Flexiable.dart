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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
              fit: FlexFit.loose,
              flex: 25,
              child: Container(color: Colors.black,)
          ),
          Flexible(
              fit: FlexFit.loose,
              flex: 25,
              child: Container(color: Colors.green,)
          ),
          Flexible(
              fit: FlexFit.loose,
              flex: 20,
              child: Container(color: Colors.red,)
          ),
          Flexible(
              fit: FlexFit.loose,
              flex: 25,
              child: Container(color: Colors.blue,)
          )
        ],
      ),
    );
  }
}

