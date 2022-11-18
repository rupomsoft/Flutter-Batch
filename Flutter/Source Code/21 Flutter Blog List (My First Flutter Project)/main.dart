import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/BlogDetailsActivity.dart';
import 'BlogList.dart';
import 'MyStyle.dart';

main(){
  runApp(const MyApp());
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
        appBar: AppBar(title: Text("Blog List")),
        body: ListView.builder(
          itemCount: BlogList.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>
                        BlogDetailsActivity(BlogList[index])
                    ));
              },
              child: Card(
                  margin: EdgeInsets.all(5),
                  child: SizedBox(
                    height: 100,
                    width: double.maxFinite,
                    child:Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("${BlogList[index]['title'].toString()}",style: CardHeadText),
                        Text("${BlogList[index]['date'].toString()}",style: CardText),
                        Text("${BlogList[index]['short'].toString()}",style: CardText)
                      ],
                    ),)
                  ),
              ),
            );
          },
        )
    );
  }
}