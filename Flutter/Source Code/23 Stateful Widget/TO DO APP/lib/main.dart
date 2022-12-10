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
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  List ToDoList=[];
  String Item="";
  String InitialText="";
  @override
  State<StatefulWidget> createState() {
    return MyHomePageUi();
  }
}

class MyHomePageUi extends State<MyHomePage>{


  final TextEditingController textController = TextEditingController();

  ButtonOnClick(){
   setState(() {
      widget.ToDoList.add({"name":"${widget.Item}"});
      textController.clear();
   });
  }

  DeleteOnClick(index){
    setState(() {
      widget.ToDoList.removeAt(index);
    });
  }

  InputOnChange(content){
    setState(() {
      widget.Item=content;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(title: Text('To Do App')),
      body: Container(
        padding: EdgeInsets.all(10),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex:10,
              child: Row(
                  children: [
                    Expanded(flex:3, child:TextFormField(controller: textController, decoration: AppInputStyle("To do"),onChanged:(content){InputOnChange(content);},),),
                    Expanded(flex:1,child: Padding(padding:EdgeInsets.only(left: 5),child: ElevatedButton(style:AppButtonStyle(),child: Text('Add'),onPressed: (){ ButtonOnClick();}),))
                  ],
              ),
            ),
            Expanded(
                flex: 80,
                child: ListView.builder(
                    itemCount: widget.ToDoList.length,
                    itemBuilder: (context,index){
                      return Card (
                        child: SizedBox50(
                            Row(
                              children: [
                                SizedBox(height: 10,),
                                Expanded(flex:80,child: Text(widget.ToDoList[index]["name"].toString()),),
                                Expanded(flex:20,child: TextButton(onPressed: (){DeleteOnClick(index);}, child: Icon(Icons.delete),),)
                              ],
                            )
                        ),
                      );
                    })
            ),
          ],
        ),
      )

    );

  }

}