import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/Components/AppBar.dart';
import 'package:main/Screen/ProductCRUDProject/ProductCreateScreen.dart';
import '../../Components/DeleteAlert.dart';
import '../../RestAPI/RestClient.dart';
import '../../Style/Style.dart';

class ProductGridViewScreen extends StatefulWidget {
  @override
  State<ProductGridViewScreen> createState() => _ProductGridViewState();
}

class _ProductGridViewState extends State<ProductGridViewScreen> {

  List ProductList=[];
  bool isLoading = true;

  @override
  void initState() {
    CallData();
    super.initState();
  }

  CallData() async{
    isLoading=true;
    var data= await ProductGridViewListRequest();
    setState(() {
      ProductList=data;
      isLoading=false;
    });
  }

  DeleteData(id) async{
    setState(() {isLoading=true;});
    await ProductDeleteRequest(id);
    CallData();
  }

  CallDeleteAlert(id,context) async {
   bool confirmation=await DeleteAlert(context);
   if(confirmation){
     DeleteData(id);
   }

  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScreenAppBar('Product Grid'),
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            child: isLoading?(Center(child: CircularProgressIndicator(),))
                :RefreshIndicator(
                onRefresh: () async {
                  await CallData();
                },
                child: GridView.builder(
                    gridDelegate: ProductGridViewStyle(),
                    itemCount: ProductList.length,
                    itemBuilder: (context,index){
                      return Card(
                        clipBehavior: Clip.antiAlias,
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(child: Image.network(ProductList[index]['Img'], fit: BoxFit.fill,)),
                            Container(
                              padding: EdgeInsets.fromLTRB(5, 5, 5, 7),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(ProductList[index]['ProductName']),
                                  SizedBox(height: 7),
                                  Text("Price: "+ProductList[index]['TotalPrice']),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      OutlinedButton(
                                        onPressed: (){

                                        },
                                        child: Icon(CupertinoIcons.ellipsis_vertical_circle,size: 18,color: colorGreen),
                                      ),
                                      SizedBox(width: 3,),
                                      OutlinedButton(
                                        onPressed: (){
                                          CallDeleteAlert(ProductList[index]['_id'],context);
                                        },
                                        child: Icon(CupertinoIcons.delete,size: 18,color: colorRed),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      );
                    })
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorGreen,
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  ProductCreateScreen()),
          );
        },
      ),
    );
  }
}
