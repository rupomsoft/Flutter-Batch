import 'package:flutter/material.dart';

import '../style/style.dart';

ListView TaskList(TaskItems,DeleteItem){


  return ListView.builder(
    itemCount: TaskItems.length,
    itemBuilder: (context,index){
      Color statusColor=colorGreen;
      if(TaskItems[index]['status']=="New"){
        statusColor=colorBlue;
      }
      else if(TaskItems[index]['status']=="Progress"){
        statusColor=colorOrange;
      }
      else if(TaskItems[index]['status']=="Canceled"){
        statusColor=colorRed;
      }

      return Card(
        child: ItemSizeBox(
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TaskItems[index]['title'],style: Head6Text(colorDarkBlue),),
              Text(TaskItems[index]['description'],style: Head7Text(colorLightGray),),
              Text(TaskItems[index]['createdDate'],style: Head9Text(colorDarkBlue),),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StatusChild(TaskItems[index]['status'],statusColor),
                  Container(
                   child: Row(
                      children: [
                        SizedBox(width: 50,height:30,child:ElevatedButton(onPressed:(){},child: Icon(Icons.edit_location_alt_outlined,size: 16),style:AppStatusButtonStyle(colorBlue))),
                        SizedBox(width: 10),
                        SizedBox(width: 50,height: 30,child: ElevatedButton( onPressed:(){
                          DeleteItem("1");
                        }, child: Icon(Icons.delete_outlined,size: 16),style:AppStatusButtonStyle(colorRed)))
                      ],
                    )
                  ),

                ],
              )
            ],
          )
        ),
      );
    }
  );
}