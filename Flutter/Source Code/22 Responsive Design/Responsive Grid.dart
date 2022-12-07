import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:responsive_grid/responsive_grid.dart';

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
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              lg: 12,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.purple,
                child: Text("lg : 12"),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.green,
                child: Text("xs : 6 \r\nmd : 3"),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.orange,
                child: Text("xs : 6 \r\nmd : 3"),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.red,
                child: Text("xs : 6 \r\nmd : 3"),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.blue,
                child: Text("xs : 6 \r\nmd : 3"),
              ),
            ),
          ],
        ),
      )
    );
  }
}

