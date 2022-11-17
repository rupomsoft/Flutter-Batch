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
          ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1("This is from home to activity 1")));
          }, child: Text("Go Activity 1")),

          ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This is from home to activity 2")));
          }, child: Text("Go Activity 2")),
        ],
      ),
    );

  }
}

class Activity1 extends StatelessWidget{

  String msg;

   Activity1(
      this.msg,
      {super.key}
   );


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title:Text( msg),
        ),
        body: Center(
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This is from activity 1 to activity 2")));

          },child: Text('Go Activity 2'),),
        ),

    );

  }
}

class Activity2 extends StatelessWidget{
   String msg;
   Activity2(
       this.msg,
       {super.key}
  );
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title:Text( msg),
        ),
         body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1("This is from activity 2 to activity 1")));

        },child: Text('Go Activity 1'),),
      ),
    );

  }
}
