import 'package:flutter/material.dart';
import 'MyStyle.dart';

class BlogDetailsActivity extends StatelessWidget{
  var BlogItem;
  BlogDetailsActivity(
      this.BlogItem,
      {super.key}
  );




  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text(BlogItem['date'])),
        body: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              margin: EdgeInsets.all(5),
              child: SizedBox(
                  height: 200,
                  width: double.maxFinite,
                  child:Padding(
                    padding: EdgeInsets.all(2),
                    child: Image.network(BlogItem['img'],fit: BoxFit.cover,)
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: SizedBox(
                  height: 300,
                  width: double.maxFinite,
                  child:Padding(padding: EdgeInsets.all(2),
                    child:Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [

                        Text("${BlogItem['title'].toString()}",style: CardHeadText),
                        Text("${BlogItem['des'].toString()}",style: CardText),
                      ],
                     )
                  )
              ),
            ),

          ],

        )
    );
  }
}