import 'package:flutter/material.dart';

import '../style/style.dart';

ListView TaskList(TaskItems){
  return ListView.builder(
    itemCount: TaskItems.length,
    itemBuilder: (context,index){
      return Card(
        child: ItemSizeBox(
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TaskItems[index]['title'],style: Head6Text(colorDarkBlue),),
              Text(TaskItems[index]['description'],style: Head7Text(colorLightGray),),
            ],
          )
        ),
      );
    }
  );
}