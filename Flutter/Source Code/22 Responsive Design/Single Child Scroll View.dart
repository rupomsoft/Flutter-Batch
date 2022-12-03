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
     body: SingleChildScrollView(
       scrollDirection: Axis.horizontal,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Container(height: 200,width: 200,color: Colors.black,),
           Container(height: 200,width: 200,color: Colors.red,),
           Container(height: 200,width: 200,color: Colors.green,),
           Container(height: 200,width: 200,color: Colors.orange,),
           Container(height: 200,width: 200,color: Colors.grey,),
           Container(height: 200,width: 200,color: Colors.blue,),
           Container(height: 200,width: 200,color: Colors.black,),
         ],
       ),
     )
    );
  }
}

