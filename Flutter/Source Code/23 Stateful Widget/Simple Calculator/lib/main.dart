import 'package:flutter/material.dart';

import 'Style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}




class MyHomePage extends StatefulWidget{
  double num1=0;
  double num2=0;
  double sum=0;

  @override
  State<StatefulWidget> createState() {
    return MyHomePageUi();
  }
}

class MyHomePageUi extends State<MyHomePage>{



  ButtonOnClick(){
   double res=widget.num1+widget.num2;
   setState(() {
     widget.sum=res;
   });
  }

  InputOnChange(num,content){
    setState(() {
      switch (num) {
        case "num1":
          widget.num1=double.parse(content);
          break;
        case "num2":
          widget.num2=double.parse(content);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sum App')),
      body: Container(
        padding: EdgeInsets.all(35),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text("Sum is=${widget.sum}",style: HeaTextStyle()),
              SizedBox(height: 10),
              TextField(keyboardType: TextInputType.number,decoration: AppInputStyle("First Number"), onChanged: (content){InputOnChange("num1",content);}),
              SizedBox(height: 20),
              TextField(keyboardType: TextInputType.number,decoration: AppInputStyle("Second Number"),onChanged: (content){InputOnChange('num2',content);}),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child:ElevatedButton(style:AppButtonStyle(),child: Text('Add'),onPressed: (){ ButtonOnClick();}),
              ),
            ],
          ),
        )
      )

    );

  }

}