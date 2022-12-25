import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/RestAPI/RestClient.dart';
import 'package:main/Screen/ProductCRUDProject/ProductGridViewScreen.dart';
import '../../Components/AppBar.dart';
import '../../Style/Style.dart';



class ProductCreateScreen extends StatefulWidget {
  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}



class _ProductCreateScreenState extends State<ProductCreateScreen> {

  Map<String,String> FormValues={'Img':'','ProductCode':'','ProductName':'','Qty':'','TotalPrice':'','UnitPrice':'',};
  bool isLoading=false;

  InputOnChange(Key,Value){
    setState(() {
      FormValues.update(Key, (value) => Value);
    });
  }


  CreateProduct() async {
    setState(() {isLoading=true;});
    bool res=await ProductCreateRequest(FormValues);
    if(res){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  ProductGridViewScreen()),
      );
    }
    setState(() {isLoading=false;});
  }


  FormValidation(){
    if(FormValues['Img']!.length==0){
        ErrorToast("Image Required");
        return false;
    }
    else if(FormValues['ProductCode']!.length==0){
      ErrorToast("Product Code Required");
      return false;
    }
    else if(FormValues['ProductName']!.length==0){
      ErrorToast("Product Name Required");
      return false;
    }
    else if(FormValues['Qty']!.length==0){
      ErrorToast("Qty Required");
      return false;
    }
    else if(FormValues['TotalPrice']!.length==0){
      ErrorToast("Total Price Required");
      return false;
    }
    else if(FormValues['UnitPrice']!.length==0){
    ErrorToast("Unit Price Required");
    return false;
    }
    else{
      CreateProduct();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScreenAppBar('Create Product'),
      body:Stack(
        children: [
          ScreenBackground(context),
          Container(
            child:   isLoading?(Center(child: CircularProgressIndicator(),)):
            (SingleChildScrollView(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  TextFormField(initialValue: FormValues['ProductName'], decoration: AppInputDecoration("Product Name"),onChanged: (Value){
                    InputOnChange("ProductName",Value);
                  }),

                  SizedBox(height: 20),

                  TextFormField(initialValue: FormValues['ProductCode'], decoration: AppInputDecoration("Product Code"),onChanged: (Value){
                    InputOnChange("ProductCode",Value);
                  }),

                  SizedBox(height: 20),

                  TextFormField(initialValue: FormValues['Img'], decoration: AppInputDecoration("Product Img Url"),onChanged: (Value){
                    InputOnChange("Img",Value);
                  }),

                  SizedBox(height: 20),

                  AppDropDownStyle(
                    DropdownButton(
                      value: FormValues['Qty'],
                      items: [
                        DropdownMenuItem(value: "",child: Text('Select Qty')),
                        DropdownMenuItem(value: "1 pcs",child: Text('1 pcs' )),
                        DropdownMenuItem(value: "2 pcs",child: Text('2 pcs')),
                        DropdownMenuItem(value: "3 pcs",child: Text('3 pcs')),
                        DropdownMenuItem(value: "4 pcs",child: Text('4 pcs')),
                        DropdownMenuItem(value: "5 pcs",child: Text('5 pcs')),
                      ],
                      onChanged: (newValue){InputOnChange("Qty",newValue);},
                      underline: Container(), //remove underline
                      isExpanded: true,
                    ),
                  ),

                  SizedBox(height: 20),

                  TextFormField(initialValue: FormValues['UnitPrice'], decoration: AppInputDecoration("Unit Price"),onChanged: (Value){
                    InputOnChange("UnitPrice",Value);
                  }),

                  SizedBox(height: 20),

                  TextFormField(initialValue: FormValues['TotalPrice'], decoration: AppInputDecoration("Total Price"),onChanged: (Value){
                    InputOnChange("TotalPrice",Value);
                  }),

                  SizedBox(height: 20),

                  Container(
                    child: ElevatedButton(
                        child: SuccessButtonChild('Create'),
                        style: AppButtonStyle(),
                        onPressed: (){
                          FormValidation();
                        },
                    )
                  )
                ],
              ),
            ))
          )

        ],
      )
    );
  }
}
