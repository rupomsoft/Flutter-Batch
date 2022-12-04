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
        child:  BootstrapContainer(
          fluid: false,
          children: [
            BootstrapRow(
                height: 100,
                children: [
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child: Container(height: 100,color: Colors.green,)
                  ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child: Container(height: 100,color: Colors.red,)
                  ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child: Container(height: 100,color: Colors.pink,)
                  ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child: Container(height: 100,color: Colors.yellow,)
                  ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child: Container(height: 100,color: Colors.blue,)
                  ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child: Container(height: 100,color: Colors.teal,)
                  ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child: Container(height: 100,color: Colors.black,)
                  ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child: Container(height: 100,color: Colors.lightBlueAccent,)
                  ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child: Container(height: 100,color: Colors.greenAccent,)
                  ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child: Container(height: 100,color: Colors.blueAccent,)
                  ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child: Container(height: 100,color: Colors.orange,)
                  ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child: Container(height: 100,color: Colors.limeAccent,)
                  ),
                ]
            )
          ],
        )
      )
    );
  }
}

