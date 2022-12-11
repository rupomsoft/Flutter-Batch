import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ToDoPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To Do",
      theme: ThemeData(primarySwatch: Colors.green),
      home:ToDoPage() ,
    );
  }
}