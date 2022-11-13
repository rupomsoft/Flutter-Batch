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
        home:const HomeActivity()
    );

  }
}


class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MySnackBar(message,context){
   return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }


  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        padding: EdgeInsets.all(25),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))
        )
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: (){MySnackBar("I am Text Button",context);}, child: Text('Text Button')),
          ElevatedButton(onPressed: (){MySnackBar("I am Elevated Button",context);}, child: Text('Elevated Button'),style: buttonStyle,),
          OutlinedButton(onPressed: (){MySnackBar("I am Outline Button",context);}, child: Text('Outline Button')),
        ],
      ),
    );

  }



}