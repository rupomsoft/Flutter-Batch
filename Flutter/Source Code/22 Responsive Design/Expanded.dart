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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 25,
              child: Container(color: Colors.black,)
          ),
          Expanded(
              flex: 25,
              child: Container(color: Colors.green,)
          ),
          Expanded(
              flex: 50,
              child: Container(color: Colors.red,)
          ),
          Expanded(
              flex: 25,
              child: Container(color: Colors.blue,)
          )
        ],
      ),
    );
  }
}

